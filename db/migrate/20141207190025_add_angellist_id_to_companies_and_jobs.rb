class AddAngellistIdToCompaniesAndJobs < ActiveRecord::Migration
  def change
    add_column :companies, :angellist_company_id, :integer
    add_column :jobs, :angellist_job_id, :integer
  end
end
