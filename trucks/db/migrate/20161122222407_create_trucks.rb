class CreateTrucks < ActiveRecord::Migration[5.0]
  def change
    create_table :trucks do |t|
      t.string :make
      t.string :model

      t.timestamps
    end
  end
end
