class RemoveWeatherFromPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :weather, :string
  end
end
