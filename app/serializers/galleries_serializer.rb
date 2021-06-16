class GalleriesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :thumbnail
  has_many :pictures
end
