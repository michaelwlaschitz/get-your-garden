class CreateGardens < ActiveRecord::Migration[5.2]
  def change
    create_table :gardens do |t|
      t.string :title
      t.text :description
      t.string :location
      t.integer :price
      t.integer :capacity
      t.references :user, foreign_key: true
      t.boolean :barbecue
      t.boolean :pool
      t.boolean :green_area

      t.timestamps
    end
  end
end
