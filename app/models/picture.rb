class Picture < ApplicationRecord
  belongs_to :gallery

  has_one_attached :image, service: :cloudinary
end
