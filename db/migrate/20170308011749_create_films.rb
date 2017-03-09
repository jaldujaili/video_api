class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :description
      t.string :url_slug
      t.integer :year
      t.integer :relation_id

      
    end
  end
end
