class CreateCompaniesFromParsedData < ActiveRecord::Base
  # Query the database to see if a the company already exists by angellist_id
  # If not, create company
  # Use the first_or_create_method
  def self.call(parsed_company_data)
    parsed_company_data.each do |company|
      startup = Company.where(:angellist_company_id => company[:angellist_company_id]).first_or_create
      startup.update_attributes(company)
    end
  end
end
