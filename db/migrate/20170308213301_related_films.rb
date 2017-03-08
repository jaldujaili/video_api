class RelatedFilms < ActiveRecord::Migration[5.0]
  def change
  	create_table :related_films do |t|
      t.integer :film_id
      t.integer :relation_id
    end
  end
end
