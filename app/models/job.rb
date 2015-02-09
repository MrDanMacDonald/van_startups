class Job < ActiveRecord::Base
  belongs_to :company
  validates_presence_of :company_id

  def company_name
    return unless company_id
    company.name
  end

  def company_logo
    return unless company_id
    company.logo
  end

  def company_website
    return unless company_id
    company.website
  end
end
