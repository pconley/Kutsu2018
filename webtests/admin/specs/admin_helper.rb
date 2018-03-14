require_relative "../../spec_helper.rb"

dir = File.dirname(__FILE__) # 
puts "admin dir = #{dir}"
# $LOAD_PATH.unshift("#{dir}")
$LOAD_PATH.unshift("#{dir}/../pages")
puts "load path = #{$LOAD_PATH[0..3]}"

module Admin
	# namespace to contain the admin pages
end