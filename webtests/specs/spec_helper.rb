require 'shiken'

def trace(s)
  puts ">>> #{s}"
end

def warn(s)
  puts ">>> WARNING: #{s}"
end

dir = File.dirname(__FILE__)
$LOAD_PATH.unshift("#{dir}/../pages")

$host = 'localhost:3000' # default
if ENV["HOST"].downcase == 'prod' 
  $host = 'gentle-escarpment-92216.herokuapp.com'
  warn("host = #{$host}")
end

require 'home_page.rb'
# require 'travel_flight_page.rb'
# require 'travel_passenger_page.rb'
# require 'travel_card_page.rb'

# require 'session_travel.rb'

$good_user  = "username" # TODO: get from ENV
$good_pass  = "password" # TODO: get from ENV


RSpec.configure do |config|



  config.before :suite do |x|
    trace "before suite" 
    SK::init()
    SK::Trace.level = SK::Trace::WARN # DEBUG < WARN < ERROR < QUIET
    # SK.driver.manage.window.maximize # full size browser window
  end
   
  config.after :suite do |x|
    trace "after suite"
    SK::quit()
  end
          
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

end
