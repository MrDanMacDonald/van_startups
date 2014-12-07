ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'pry'

class ActiveSupport::TestCase
  RSpec.configure do |config|
   # Use color in STDOUT
     config.color_enabled = true

   # Use color not only in STDOUT but also in pagers and files
     config.tty = true

   # Use the specified formatter
     config.formatter = :documentation # :progress, :html, :textmate
  end
end
