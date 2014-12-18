class ChangeSalaryAndEquityDataTypes < ActiveRecord::Migration
  def change
    remove_column :jobs, :salary
    remove_column :jobs, :equity
    add_column :jobs, :salary, :json
    add_column :jobs, :equity, :json
  end
end
