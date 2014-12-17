class CreateJobsFromParsedData < ActiveRecord::Base

  def self.call(parsed_job_data)
    startups = Company.all
    #only proceed if job doesn't already exist
    # return unless Job.where('')
    parsed_job_data.each do |job|
      startups.all.each do |startup|
        if job[:angellist_company_id] == startup[:angellist_company_id]
          startup.jobs.create(job)
        end
      end
    end
  end
end
