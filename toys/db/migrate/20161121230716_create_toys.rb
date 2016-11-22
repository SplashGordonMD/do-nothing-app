class CreateToys < ActiveRecord::Migration[5.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.string :game

      t.timestamps
    end
  end
end
