class Author < ApplicationRecord
	has_many :works
	
	def to_s
		"#{first_name} #{last_name}"	
	end
end
