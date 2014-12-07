require 'spec_helper'

describe Company do

  it { should respond_to(:angellist_company_id) }
  it { should respond_to(:name) }
  it { should respond_to(:product) }
  it { should respond_to(:size) }
  it { should respond_to(:location) }
  it { should respond_to(:website) }
  it { should respond_to(:logo) }

  it { should have_many(:jobs) }

  let(:company) { FactoryGirl.build(:company) }

  subject { company }

  it { should be_valid }

  describe 'validations' do 
    it 'should validate presence of angellist_company_id' do 
    end
    it 'should validate presence of name' do 
    end
  end
end
