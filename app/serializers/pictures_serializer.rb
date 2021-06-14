class PicturesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :src, :thumbnail, :image
end
