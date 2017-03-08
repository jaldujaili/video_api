class Relations < ActiveRecord::Migration[5.0]
  def change
  	create_table :relations do |t|
      t.string :movie_type
    end
  end
end
