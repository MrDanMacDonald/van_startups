require 'spec_helper'

describe Company do

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
end
