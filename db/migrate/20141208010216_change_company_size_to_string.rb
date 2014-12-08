class ChangeCompanySizeToString < ActiveRecord::Migration
  def change
    change_table :companies do |t|
      t.change :size, :string
    end
  end
end
