class AddThumbnailToGalleries < ActiveRecord::Migration[6.1]
  def change
    add_column :galleries, :thumbnail, :string
  end
end
