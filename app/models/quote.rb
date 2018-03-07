class Quote < ApplicationRecord

	validates_presence_of :signature, :text

end
