class Category < ApplicationRecord
	validates :name, presence: true
	validates_length_of :name, :in => 5..50
	has_many :recipes
end
