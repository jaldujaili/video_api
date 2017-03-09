class Film < ApplicationRecord
# has_many :related_films
has_many :relations

	def to_h
		binding.pry
		super.merge(relations: relations.map(&:to_h))
	end
end
