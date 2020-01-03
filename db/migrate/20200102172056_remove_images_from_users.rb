class RemoveImagesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :images, :string
  end
end
