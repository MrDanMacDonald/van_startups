class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :salary
      t.string :equity
      t.string :job_type

      t.timestamps
    end
  end
end
