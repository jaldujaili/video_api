class Relation < ApplicationRecord
has_many :films, through: :related_film

end