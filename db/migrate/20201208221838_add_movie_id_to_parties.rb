class AddMovieIdToParties < ActiveRecord::Migration[5.2]
  def change
    add_column :parties, :movie_id, :string
  end
end
