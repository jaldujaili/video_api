class Rating < ApplicationRecord
	belongs_to :user
	belongs_to :film

	def avg_rating
		avg = 0 
		f = film.ratings
		f.each {|i| avg = avg + i.score}
		avg/film.ratings.size
	end

	def to_h
		super.merge()
	end
end
