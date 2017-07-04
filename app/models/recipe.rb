class Recipe < ApplicationRecord
	validates :item, presence: true
	validates :ingredients, presence: true
	validates :procedure, presence: true
	belongs_to :category

#	validates_length_of :item, :in => 5..10

	default_scope -> { order('created_at DESC') }
	scope :category_id, -> (category_id) { where category_id: category_id }


end
