class CreateJobsFromParsedData < ActiveRecord::Base
  def self.call(parsed_job_data)
    # Order of the looping must be messed up, as only 2 jobs are getting created
    # Rethink how I'm doing this
    startups = Company.all
    parsed_job_data.each do |job|
      startups.all.each do |startup|
        return false if Job.all.map(&:angellist_job_id).include?(job[:angellist_job_id])
        if job[:angellist_company_id] == startup[:angellist_company_id]
          startup.jobs.create(job)
        end
      end
    end
  end
end
