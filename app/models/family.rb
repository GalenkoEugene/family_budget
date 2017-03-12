class Family < ApplicationRecord
	has_many :users

	def self.search(f)
	  if f
	    where('name LIKE ?', "%#{f}%")
	  else
	    all
	  end
	end
end
