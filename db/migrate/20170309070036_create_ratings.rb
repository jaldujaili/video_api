class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.integer :film_id
      t.integer :user_id

      
    end
  end
end
