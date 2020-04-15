class Product < ApplicationRecord
	has_many :appointments
	has_many :categories, through: :appointments
	accepts_nested_attributes_for :categories
end
