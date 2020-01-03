class Photo < ApplicationRecord
  mount_uploader :image, ImagesUploader
  belongs_to :user
  geocoded_by :address
  after_validation :geocode


    validates :caption, presence: true
    validates :description, presence: true
    validates :date_taken, presence: true
    validates :address, presence: true

end
