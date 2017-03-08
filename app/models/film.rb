class Film < ApplicationRecord
has_many :relations, through: :related_film
	# def to_h
	# 	compact.merge(title: title, description: description)
	# end
end
