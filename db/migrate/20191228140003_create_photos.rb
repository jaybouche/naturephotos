class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :caption
      t.text :description
      t.string :address
      t.string :weather
      t.timestamps
    end
  end
end
