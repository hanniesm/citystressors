class CreateWalks < ActiveRecord::Migration[5.2]
  def change
    create_table :walks do |t|
      t.string :title
      t.string :description
      t.string :prewalkReflections
      t.string :postwalkReflections
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
