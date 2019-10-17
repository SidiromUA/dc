class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :title
      t.integer :kind

      t.timestamps
    end
  end
end
