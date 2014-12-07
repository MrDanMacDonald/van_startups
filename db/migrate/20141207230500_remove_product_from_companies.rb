class RemoveProductFromCompanies < ActiveRecord::Migration
  def change
    remove_column :companies, :product
  end
end
