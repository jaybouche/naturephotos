class ModifyImagesFromPhotos < ActiveRecord::Migration[5.2]
  def change
  rename_column :photos, :images, :image 
  end
end
