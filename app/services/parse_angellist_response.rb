class ParseAngellistResponse < ActiveRecord::Base
  # TODO: check for new companies/jobs and delete those that no longer exist.
  # TODO: refactor into worker

  def self.call(data)
    binding.pry
    company_ids = []
    data['jobs'].each do |job|
      company_ids << { angellist_company_id: job['startup']['id'] }
    end
    company_data_dump = fetch_company_details(company_ids)
    parsed_company_data = parse_company_data(company_data_dump)
    parsed_job_data = parse_job_data(data)
    CreateCompaniesFromParsedData.call(parsed_company_data)
    CreateJobsFromParsedData.call(parsed_job_data)
  end

  def self.fetch_company_details(company_ids)
    detailed_company_data = []
    company_ids.each do |company|
      detailed_company_data << pull_company_details_from_angellist(company[:angellist_company_id])
    end
    detailed_company_data
  end

  def self.pull_company_details_from_angellist(company_id)
    HTTParty.get("https://api.angel.co/1/startups/#{company_id}")
  end

  def self.parse_company_data(company_data_dump)
    company_profiles = []
    company_data_dump.each do |company|
      company_profiles <<
        {
          angellist_company_id: company['id'],
          name: company['name'],
          description: company['product_desc'],
          concept: company['high_concept'],
          size: company['company_size'],
          markets: company['markets'],
          website: company['company_url'],
          logo: company['logo_url'],
          thumbnail: company['thumb_url']
        }
    end
    company_profiles
  end

  def self.parse_job_data(job_data)
    job_postings = []
    job_data['jobs'].each do |job|
      job_postings <<
        {
          angellist_job_id: job['id'],
          angellist_company_id: job['startup']['id'],
          title: job['title'],
          salary: [job['salary_min'], job['salary_max']],
          equity: [job['equity_min'], job['equity_max']],
          job_type: job['job_type'],
          role_type: parse_role_type(job['tags']),
          skill_type: parse_skill_type(job['tags']),
          angellist_url: job['angellist_url']
        }
    end
    job_postings
  end

  # TODO: DRY up these methods
  def self.parse_role_type(tag_array)
    role_type = []
    tag_array.each do |tag|
      if tag['tag_type'] == 'RoleTag'
        role_type << tag['name']
      end
    end
    role_type[0]
  end

  def self.parse_skill_type(tag_array)
    skill_type = []
    tag_array.each do |tag|
      if tag['tag_type'] == 'SkillTag'
        skill_type << tag['name']
      end
    end
    skill_type[0]
  end
end
