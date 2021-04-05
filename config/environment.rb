# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
Time::DATE_FORMATS[:br_format] = "%d/%m/%Y %H:%M"
