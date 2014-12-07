require 'spec_helper'

describe Job do
  it { should respond_to(:angellist_job_id) }
  it { should respond_to(:title) }
  it { should respond_to(:salary) }
  it { should respond_to(:equity) }
  it { should respond_to(:job_type) }

  it { should belong_to(:company) }

  let(:job) { FactoryGirl.build(:job) }

  subject { job }

  it { should be_valid }

  describe 'validations' do 
    it 'validates presence of company_id' do
    end
    it 'validates presence of angellist_job_id' do 
    end
    it 'validates presence of title' do
    end
  end
end
