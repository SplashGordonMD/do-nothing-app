class CreateTrains < ActiveRecord::Migration[5.0]
  def change
    create_table :trains do |t|
      t.string :type
      t.string :purpose

      t.timestamps
    end
  end
end
