require 'spec_helper'

describe ParseAngellistResponse do 

  let(:angellist_id) { 3806 }

  let(:job_data_dump) {
    
  }

  let(:company_data_dump) { [{"id"=>3806,
  "hidden"=>false,
  "community_profile"=>false,
  "name"=>"Linquet",
  "angellist_url"=>"https://angel.co/linquet",
  "logo_url"=>"https://d1qb2nb5cznatu.cloudfront.net/startups/i/3806-e2580ede2fb3c4b5d04d86ae51216c33-medium_jpg.jpg?buster=1360784555",
  "thumb_url"=>"https://d1qb2nb5cznatu.cloudfront.net/startups/i/3806-e2580ede2fb3c4b5d04d86ae51216c33-thumb_jpg.jpg?buster=1360784555",
  "quality"=>6,
  "product_desc"=>
   "Linquet is an innovative Internet of Things company focused on connecting your real world to you. \n\nLinquet began its journey by solving a frustrating problem for 1.9B Smartphone users & introduced the first cloud-based anti-loss solution for phones & valuables (e.g. keys, bikes, pets). Users attached tiny devices to their belongings and through Bluetooth “linqed” those items to their phone, both of which would sound an alarm when any of them fell out of range. Also, you can add your friends & the people you trust to your account, so if you happen to leave something behind, your \"Trusted Friends\" can help you retrieve it. If your item’s on the move & comes within 100 ft of another Linquet user, its location is anonymously updated & you get notified.\n\nNow we’re spreading the magic of IoT to other aspects of our lives. Linquet's new generation makes sharing stuff smart, like safely renting out your bike, or sharing your keys with your out of town guests (i.e. IoT powers Sharing Economy)",
  "high_concept"=>"The Smartest Way To Link What Matters",
  "follower_count"=>110,
  "company_url"=>"https://linquet.com",
  "created_at"=>"2011-03-04T02:17:21Z",
  "updated_at"=>"2014-11-25T21:57:00Z",
  "crunchbase_url"=>nil,
  "twitter_url"=>"https://twitter.com/linquet",
  "blog_url"=>"",
  "facebook_url"=>"https://www.facebook.com/Linquet",
  "linkedin_url"=>"https://www.linkedin.com/company/linquet",
  "video_url"=>"http://youtu.be/A7kiFMJqUTs",
  "markets"=>
   [{"id"=>3, "tag_type"=>"MarketTag", "name"=>"mobile", "display_name"=>"Mobile", "angellist_url"=>"https://angel.co/mobile-2"},
    {"id"=>7, "tag_type"=>"MarketTag", "name"=>"hardware", "display_name"=>"Hardware", "angellist_url"=>"https://angel.co/hardware"},
    {"id"=>10, "tag_type"=>"MarketTag", "name"=>"SaaS", "display_name"=>"SaaS", "angellist_url"=>"https://angel.co/saas"},
    {"id"=>2462, "tag_type"=>"MarketTag", "name"=>"internet of things", "display_name"=>"Internet of Things", "angellist_url"=>"https://angel.co/internet-of-things"}],
  "locations"=>[{"id"=>1698, "tag_type"=>"LocationTag", "name"=>"vancouver", "display_name"=>"Vancouver", "angellist_url"=>"https://angel.co/vancouver"}],
  "company_size"=>"1-10",
  "company_type"=>[],
  "status"=>
   {"id"=>163653,
    "message"=>"We just launched our new generation! Link your real world to you and the people in your life: http://youtu.be/A7kiFMJqUTs",
    "created_at"=>"2014-11-25T22:03:57Z"},
  "screenshots"=>
   [{"thumb"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/436/706/436706-1edd55db046e6b542a6cebb3fee7b07a70e117a8.jpg?1416953146",
     "original"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/436/706/436706-39686b3fd7cd21eb3770bb2087c909d57d74c067.png?1416953146"},
    {"thumb"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/436/707/436707-3f8a2a44c664686b355aaa98e7f5d22292b9e56c.jpg?1416953171",
     "original"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/436/707/436707-6e6f52486bb0a5e2b890a9c7e905703f7c4b7436.jpg?1416953171"},
    {"thumb"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/436/708/436708-5663f935ff1d29e482f5cf48367240f4aec21afb.jpg?1416953194",
     "original"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/436/708/436708-5fa98763301a7c03806ddf41bc2002da20fa4e6f.jpg?1416953194"},
    {"thumb"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/436/709/436709-2c1d3532a6c6464de4845f4fe56f7fd1a36b5e02.jpg?1416953209",
     "original"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/436/709/436709-2d3332d1c255b59a6649a65b3b9eee10e2174357.jpg?1416953209"},
    {"thumb"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/436/710/436710-6939d07f86084d4debf9c94354356e5ce1cef0a9.jpg?1416953229",
     "original"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/436/710/436710-2d398186c3e2b0d33cd03ebb5030353fdfd6133c.png?1416953229"},
    {"thumb"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/thumb/000/436/711/436711-e9910aa88d468bbd9ba824fe1411516a835ea988.jpg?1416953294",
     "original"=>"https://d2gn4xht817m0g.cloudfront.net/p/product_screenshots/images/original/000/436/711/436711-dded893a7c928154956b74f130a16f71a739a8bb.jpg?1416953294"}]}] }

  it 'should respond to ::call' do
    expect(ParseAngellistResponse).to respond_to(:call)
  end

  it 'should respond to ::fetch_company_details' do 
    expect(ParseAngellistResponse).to respond_to(:fetch_company_details)
  end

  it 'should respond to ::pull_company_details_from_angellist' do 
    expect(ParseAngellistResponse).to respond_to(:pull_company_details_from_angellist)
  end

  it 'should respond to ::parse_company_data' do 
    expect(ParseAngellistResponse).to respond_to(:parse_company_data)
  end

  it 'should respond to ::parse_job_data' do
    expect(ParseAngellistResponse).to respond_to(:parse_job_data)
  end

  describe '#parse_company_data' do
    before(:each) do 
      @parsed_company_data = ParseAngellistResponse.parse_company_data(company_data_dump)
    end
    it 'should retrieve the angellist_company_id' do
      expect(@parsed_company_data[0][:angellist_company_id]).to eq 3806
    end
    it 'should retrieve the company name' do 
      expect(@parsed_company_data[0][:name]).to eq 'Linquet'
    end
    it 'should retrive the company description' do
      expect(@parsed_company_data[0][:description]).to eq "Linquet is an innovative Internet of Things company focused on connecting your real world to you. \n\nLinquet began its journey by solving a frustrating problem for 1.9B Smartphone users & introduced the first cloud-based anti-loss solution for phones & valuables (e.g. keys, bikes, pets). Users attached tiny devices to their belongings and through Bluetooth “linqed” those items to their phone, both of which would sound an alarm when any of them fell out of range. Also, you can add your friends & the people you trust to your account, so if you happen to leave something behind, your \"Trusted Friends\" can help you retrieve it. If your item’s on the move & comes within 100 ft of another Linquet user, its location is anonymously updated & you get notified.\n\nNow we’re spreading the magic of IoT to other aspects of our lives. Linquet's new generation makes sharing stuff smart, like safely renting out your bike, or sharing your keys with your out of town guests (i.e. IoT powers Sharing Economy)"
    end
    it 'should retrive the company concept' do
      expect(@parsed_company_data[0][:concept]).to eq 'The Smartest Way To Link What Matters'
    end
    it 'should retrive the company size' do
      expect(@parsed_company_data[0][:size]).to eq '1-10' 
    end
    it 'should retrieve the company markets' do
      expect(@parsed_company_data[0][:markets]).to eq [{"id"=>3, "tag_type"=>"MarketTag", "name"=>"mobile", "display_name"=>"Mobile", "angellist_url"=>"https://angel.co/mobile-2"},
    {"id"=>7, "tag_type"=>"MarketTag", "name"=>"hardware", "display_name"=>"Hardware", "angellist_url"=>"https://angel.co/hardware"},
    {"id"=>10, "tag_type"=>"MarketTag", "name"=>"SaaS", "display_name"=>"SaaS", "angellist_url"=>"https://angel.co/saas"},
    {"id"=>2462, "tag_type"=>"MarketTag", "name"=>"internet of things", "display_name"=>"Internet of Things", "angellist_url"=>"https://angel.co/internet-of-things"}]
    end
    it 'should retrieve the company website' do 
      expect(@parsed_company_data[0][:website]).to eq 'https://linquet.com'
    end
    it 'should retrieve the company logo' do
      expect(@parsed_company_data[0][:logo]).to eq 'https://d1qb2nb5cznatu.cloudfront.net/startups/i/3806-e2580ede2fb3c4b5d04d86ae51216c33-medium_jpg.jpg?buster=1360784555'
    end
    it 'should retrieve the company thumbnail' do
      expect(@parsed_company_data[0][:thumbnail]).to eq 'https://d1qb2nb5cznatu.cloudfront.net/startups/i/3806-e2580ede2fb3c4b5d04d86ae51216c33-thumb_jpg.jpg?buster=1360784555'
    end
  end
end
