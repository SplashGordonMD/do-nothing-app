class CreateShoes < ActiveRecord::Migration[5.0]
  def change
    create_table :shoes do |t|
      t.string :use
      t.string :material

      t.timestamps
    end
  end
end
