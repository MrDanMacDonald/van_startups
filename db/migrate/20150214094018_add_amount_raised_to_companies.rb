class AddAmountRaisedToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :amount_raised, :integer
  end
end
