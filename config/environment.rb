# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
GeneralExpense::Application.initialize!

config.load_paths << "#{RAILS_ROOT}/app/reports"