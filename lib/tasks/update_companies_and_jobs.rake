require 'httparty'
namespace :jobs do

  # Make API call to AngelList to fetch all jobs in Vancouver
  desc "checks for new companies and updates existing ones"
  task update_jobs: :environment do |args|

    # Access token from Angellist
    access_token = APP_CONFIG['angellist_access_token']

    # Fetches all jobs with the location_tag of 1698 (Vancouver, BC)
    response = HTTParty.get("https://api.angel.co/1/tags/1698/jobs?access_token=#{access_token}")

    ParseAngellistResponse.call(response)
  end
end
