class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :type
      t.text :variety

      t.timestamps
    end
  end
end
