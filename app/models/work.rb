class Work < ApplicationRecord
	belongs_to :author
	def to_s
		"#{work}"	
	end
end
