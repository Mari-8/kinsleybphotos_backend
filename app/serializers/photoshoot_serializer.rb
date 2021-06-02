class PhotoshootSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :time, :name, :email, :cell, :shoot_type, :locations, :outfits, :specifics
end
