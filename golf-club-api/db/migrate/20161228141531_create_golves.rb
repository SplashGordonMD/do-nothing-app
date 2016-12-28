class CreateGolves < ActiveRecord::Migration[5.0]
  def change
    create_table :golves do |t|
      t.text :variety
      t.text :brand
      t.integer :number

      t.timestamps
    end
  end
end
