class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.text :name
      t.text :image
      t.integer :age
      t.text :story
      t.timestamps
    end
  end
end
