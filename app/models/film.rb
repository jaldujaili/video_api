class Film < ApplicationRecord
belongs_to :relation, optional: true
has_many :ratings
has_many :users, through: :ratings


	def to_h
		super.merge(related_film_ids: relation.films.ids, ratings_average: ratings.map(&:avg_rating).first)
	end
end
