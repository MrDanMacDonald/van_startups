require 'spec_helper'

describe ParseAngellistResponse do

  # Job whose angellist_job_id doesn't yet exist in the db
  # # A company with its angellist_company_id exists in the db
  # let { :job_data_1 }

  # Job whose angellist_job_id does exist in the db
  # A company with its angellist_company_id exists in the db
  # let { :job_data_2 }

  # Job whose angellist_job_id does not exist in the db
  # A company with its angellist_company_id does not yet exist in the db
  # let { :job_data_3 }

  describe '::call' do
    it 'should create the job if no job records with the angellist_job_id exist in the DB and a company with its angellist_company_id does' do
    end
    it 'should not create the job if a job record with the same angellist_job_id exists in the DB' do
    end
    it 'should not create the job if no companies with its angellist_company_id exist in the DB' do
    end
  end
end