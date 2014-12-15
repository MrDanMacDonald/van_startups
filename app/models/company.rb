class Company < ActiveRecord::Base
  has_many :jobs, dependent: :destroy

  def market_names
    self.markets.map{ |market| market['name'] }
  end
end
