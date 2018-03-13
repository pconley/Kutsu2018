require 'shiken'

def trace(s)
  puts ">>> #{s}" if $trace
end

def warn(s)
  puts ">>> WARNING: #{s}"
end

dir = File.dirname(__FILE__)
$LOAD_PATH.unshift("#{dir}/../pages")

$host = 'localhost:3000' # default
if ENV["HOST"] && ENV["HOST"].downcase == 'prod' 
  $host = 'gentle-escarpment-92216.herokuapp.com'
  warn("host = #{$host}")
end
$trace = true # default
if ENV["TRACE"] && ENV["TRACE"].downcase  == 'on' 
  $trace = true
  trace("tracing turned on")
end
if ENV["TRACE"] && ENV["TRACE"].downcase  == 'off' 
  $trace = false
  trace("tracing turned off")
end

require_relative 'basic_page_specs.rb'
require_relative 'public_topline_specs.rb'
require_relative 'public_header_specs.rb'
require_relative 'public_navbar_specs.rb'

require 'base_page.rb'
require 'public_topline.rb'
require 'public_header.rb'
require 'public_navbar.rb'
require 'public_page.rb'
require 'home_page.rb'
require 'about_page.rb'
require 'contact_page.rb'
require 'donate_page.rb'
require 'quotes_page.rb'
require 'volunteer_page.rb'

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
