class AddInfoToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :src, :string 
    add_column :pictures, :thumbnail, :string 
  end
end
