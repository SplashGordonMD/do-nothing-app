class CreateZoos < ActiveRecord::Migration[5.0]
  def change
    create_table :zoos do |t|
      t.string :animal
      t.string :enclosure

      t.timestamps
    end
  end
end
