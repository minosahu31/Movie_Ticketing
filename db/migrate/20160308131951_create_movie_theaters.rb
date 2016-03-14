class CreateMovieTheaters < ActiveRecord::Migration
  def up
    create_table :movie_theaters, :id => false do |t|
      t.integer :movie_id
      t.integer :theater_id
    end
    add_index :movie_theaters, ["movie_id","theater_id"]
  end
  def down
  	drop_table :movie_theaters
  end	
end
