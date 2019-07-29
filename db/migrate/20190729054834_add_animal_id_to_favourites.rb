class AddAnimalIdToFavourites < ActiveRecord::Migration[5.2]
  def change
    add_column :favourites, :animal_id, :integer
  end
end
