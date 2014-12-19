class AdditionalAttributesForJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :angellist_url, :string
    add_column :jobs, :angellist_company_id, :integer
  end
end
