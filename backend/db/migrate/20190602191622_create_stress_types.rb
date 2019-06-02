class CreateStressTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :stress_types do |t|
      t.string :title
      t.timestamps
    end
  end
end
