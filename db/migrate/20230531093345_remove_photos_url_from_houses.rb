class RemovePhotosUrlFromHouses < ActiveRecord::Migration[7.0]
  def change
    remove_column :houses, :photos_url, :string
  end
end
