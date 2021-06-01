class CreatePhotoshoots < ActiveRecord::Migration[6.1]
  def change
    create_table :photoshoots do |t|
      t.datetime :date
      t.string :time
      t.string :name
      t.string :email
      t.string :cell
      t.string :shoot_type
      t.integer :locations
      t.integer :outfits
      t.text :specifics

      t.timestamps
    end
  end
end
