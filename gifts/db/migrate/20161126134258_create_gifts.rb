class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.string :type
      t.string :people

      t.timestamps
    end
  end
end
