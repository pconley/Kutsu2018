require_relative "../../spec_helper.rb"

dir = File.dirname(__FILE__) # 
# puts "public dir = #{dir}"
# $LOAD_PATH.unshift("#{dir}")
$LOAD_PATH.unshift("#{dir}/../pages")
# puts "public load path = #{$LOAD_PATH[0..3]}"

module Public
	# namespace to contain the public pages
end

require 'shared_public_specs.rb'

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
