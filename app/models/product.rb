class Product < ActiveRecord::Base
  has_many :categorizations
  has_many :categories, through: :categorizations

	def self.search(search)
		if search
			self.all.order(:name).where(['name LIKE ?', "%#{search}%"])
		else
			self.all
		end
	end
  
end