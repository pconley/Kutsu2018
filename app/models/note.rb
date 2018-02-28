
# this is NOT an active record model...just a PORO

class Note
	attr_accessor :released_on
	attr_accessor :summary
	attr_accessor :description
	def initialize(released_on, summary, description)
		@released_on = released_on
		@summary = summary
		@description = description
	end
end