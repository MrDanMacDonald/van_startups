class ModifyJobAttributes < ActiveRecord::Migration
  def change
    rename_column :jobs, :job_type, :role_type
    add_column :jobs, :skill_type, :string
  end
end
