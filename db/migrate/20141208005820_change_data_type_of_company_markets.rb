class ChangeDataTypeOfCompanyMarkets < ActiveRecord::Migration
  def change
    remove_column :companies, :markets
    add_column :companies, :markets, :json
  end
end
