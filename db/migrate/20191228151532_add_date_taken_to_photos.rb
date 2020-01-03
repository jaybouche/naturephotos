class AddDateTakenToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :date_taken, :date
  end
end
