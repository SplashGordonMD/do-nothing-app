class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.integer :artist
      t.integer :album

      t.timestamps
    end
  end
end
