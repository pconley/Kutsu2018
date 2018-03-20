require 'shiken'

def trace(s)
  puts ">> #{s}" if $trace
end

def warn(s)
  puts ">>> WARNING: #{s}"
end

dir = File.dirname(__FILE__)
$LOAD_PATH.unshift("#{dir}")
$LOAD_PATH.unshift("#{dir}/public/pages")
$LOAD_PATH.unshift("#{dir}/public/specs")
# puts "load path = #{$LOAD_PATH[0..3]}"


################ TARGET HOST
$host = 'localhost:3000' # default
if ENV["HOST"] && ENV["HOST"].downcase == 'prod' 
  $host = 'gentle-escarpment-92216.herokuapp.com'
  warn("host = #{$host}")
end
################ TRACING ON/OFF
$trace = true # default
if ENV["TRACE"] && ENV["TRACE"].downcase  == 'on' 
  $trace = true
  trace("tracing turned on")
end
if ENV["TRACE"] && ENV["TRACE"].downcase  == 'off' 
  $trace = false
  trace("tracing turned off")
end
################ TEST DEPTH
FULLTEST   = 9
REGRESSION = 5
SANITYTEST = 2
$depth = SANITYTEST # default
$depth = ENV["DEPTH"].to_i if ENV["DEPTH"]
trace "testing to depth =  #{$depth}"


require 'base_page.rb'

$good_user  = "username" # TODO: get from ENV
$good_pass  = "password" # TODO: get from ENV

RSpec.configure do |config|

  # create an inclusion filter 
  # config.filter_run_including :depth => true
  # create an exclusion filter 
  # config.filter_run_excluding :depth => true


  config.before :suite do |x|
    trace "before suite" 
    SK::init()
    SK::Trace.level = SK::Trace::WARN # DEBUG < WARN < ERROR < QUIET
    SK.driver.manage.window.maximize # full size browser window
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
