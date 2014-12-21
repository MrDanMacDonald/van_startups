require 'spec_helper'

describe Job do
  it { should respond_to(:angellist_job_id) }
  it { should respond_to(:angellist_company_id) }
  it { should respond_to(:title) }
  it { should respond_to(:salary) }
  it { should respond_to(:equity) }
  it { should respond_to(:role_type) }
  it { should respond_to(:skill_type) }
  it { should respond_to(:job_type) }
  it { should respond_to(:angellist_url) }

  it { should belong_to(:company) }

  let(:company) { FactoryGirl.create(:company) }
  let(:job) { FactoryGirl.create(:job, company: company) }

  subject { job }

  it { should validate_presence_of(:company_id) }
  it { should be_valid }
end
