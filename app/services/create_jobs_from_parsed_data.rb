class CreateJobsFromParsedData < ActiveRecord::Base
  def self.call(parsed_job_data)
    parsed_job_data.each do |job|
      return false if Job.all.map(&:angellist_job_id).include?(job[:angellist_job_id])
      Company.all.each do |startup|
        if startup.angellist_company_id == job[:angellist_company_id]
          new_job = Job.create(company_id: startup.id)
          new_job.update_attributes(job)
        end
      end
    end
  end
end
