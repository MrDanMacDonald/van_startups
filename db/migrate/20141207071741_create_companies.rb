class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :product
      t.integer :size
      t.string :location
      t.string :website
      t.string :logo

      t.timestamps
    end
  end
end
