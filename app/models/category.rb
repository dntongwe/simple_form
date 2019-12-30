class Category < ApplicationRecord
	has_many :categorizations
	has_many :products, through: :categorizations
end
