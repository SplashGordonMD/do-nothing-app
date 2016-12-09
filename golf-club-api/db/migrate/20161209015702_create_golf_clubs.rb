class CreateGolfClubs < ActiveRecord::Migration[5.0]
  def change
    create_table :golf_clubs do |t|
      t.string :variety
      t.string :number
      t.string :brand

      t.timestamps
    end
  end
end
