class PicturesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :src, :thumbnail
end
