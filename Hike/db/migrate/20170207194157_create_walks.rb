class CreateWalks < ActiveRecord::Migration[5.0]
  def change
    create_table :walks do |t|
      t.string, :shoes
      t.string :climb

      t.timestamps
    end
  end
end
