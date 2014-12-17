class ParseAngellistResponse < ActiveRecord::Base

  # Parses the data returned from the AngelList Api call
  # TODO: refactor into worker

  def self.call(data)
    company_ids = []
    data['jobs'].each do |job|
      company_ids << { angellist_company_id: job['startup']['id'] }
    end
    company_data_dump = fetch_company_details(company_ids)
    parsed_company_data = parse_company_data(company_data_dump)
    parsed_job_data = parse_job_data(data)
    CreateCompaniesFromParsedData.call(parsed_company_data)
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
    
  end
end



