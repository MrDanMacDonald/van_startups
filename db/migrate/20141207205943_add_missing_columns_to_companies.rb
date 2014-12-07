class AddMissingColumnsToCompanies < ActiveRecord::Migration
  def change
    enable_extension :hstore
    add_column :companies, :markets, :hstore
    add_column :companies, :thumbnail, :string
    add_column :companies, :description, :text
    add_column :companies, :concept, :text
    remove_column :companies, :location
  end
end
