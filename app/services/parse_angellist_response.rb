class ParseAngellistResponse < ActiveRecord::Base
  # Parses the data returned from the AngelList Api call
  # TODO: refactor into worker

  def self.call(data)
    company_ids = []
    data['jobs'].each do |job|
      company_ids << { angellist_company_id: job['startup']['id'] }
    end
    company_data_dump = fetch_company_details(company_ids)

    # parse_company_data
    # create companies
    # parse job data
    # create jobs
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
end



