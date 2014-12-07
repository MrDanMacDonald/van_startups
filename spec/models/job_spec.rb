require 'spec_helper'

describe Job do
  it { should respond_to(:title) }
  it { should respond_to(:salary) }
  it { should respond_to(:equity) }
  it { should respond_to(:job_type) }

  it { should belong_to(:company) }

  let(:job) { FactoryGirl.build(:job) }

  subject { job }

  it { should be_valid }
end
