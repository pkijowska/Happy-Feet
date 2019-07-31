class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
    t.text :name
    t.integer :animal_id
    t.text :img
    end
  end
end
