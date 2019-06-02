class CreateStresses < ActiveRecord::Migration[5.2]
  def change
    create_table :stresses do |t|
      t.string :title
      t.string :description
      t.integer :intensity
      t.string :response
      t.string :image
      t.float :latitude
      t.float :longitude
      t.belongs_to :stress_type, index: true
      t.belongs_to :walk, index: true
      t.timestamps
    end
  end
end
