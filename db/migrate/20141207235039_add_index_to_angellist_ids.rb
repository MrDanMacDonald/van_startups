class AddIndexToAngellistIds < ActiveRecord::Migration
  def change
    change_table :companies do |t|
      t.index :angellist_company_id
    end
    change_table :jobs do |t|
      t.index :angellist_job_id
    end
  end
end
