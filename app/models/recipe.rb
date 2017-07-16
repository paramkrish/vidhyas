class Recipe < ApplicationRecord

	validates :item, presence: true
	validates :ingredients, presence: true
	validates :procedure, presence: true
	belongs_to :category
	scope :category_id, -> (category_id) { where category_id: category_id}
end
