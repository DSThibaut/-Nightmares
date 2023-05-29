class CreateHouses < ActiveRecord::Migration[7.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :superficy
      t.string :photos_url
      t.integer :price
      t.decimal :rating
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
