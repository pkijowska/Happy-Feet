class AddCategoryIdToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :category_id, :integer
  end
end
