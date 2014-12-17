class CreateCompaniesFromParsedData < ActiveRecord::Base
  def self.call(parsed_company_data)
    parsed_company_data.each do |company|
      startup = Company.where(angellist_company_id: company[:angellist_company_id]).first_or_create
      startup.update_attributes(company)
    end
  end
end
