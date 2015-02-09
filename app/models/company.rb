class Company < ActiveRecord::Base
  has_many :jobs, dependent: :destroy

  def index
    @companies = Company.includes(:jobs)
  end

  def market_names
    markets.map { |market| market['name'] }
  end
end
