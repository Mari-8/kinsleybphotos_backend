class Picture < ApplicationRecord
  belongs_to :gallery

  has_many_attached :images
end
