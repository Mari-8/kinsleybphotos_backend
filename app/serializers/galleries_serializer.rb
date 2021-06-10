class GalleriesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description 
  has_many :pictures
end
