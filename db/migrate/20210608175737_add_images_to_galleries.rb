class AddImagesToGalleries < ActiveRecord::Migration[6.1]
  def change
    add_column :galleries, :images, :string, array: true, default: []
  end
end
