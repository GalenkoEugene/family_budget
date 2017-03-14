class Family < ApplicationRecord
	has_many :users
	validates :name, presence: true

	def self.search(f)
	  if f
	    where('name LIKE ?', "%#{f}%")
	  else
	    all
	  end
	end
end
