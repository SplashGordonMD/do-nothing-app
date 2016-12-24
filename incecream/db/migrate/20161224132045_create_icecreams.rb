class CreateIcecreams < ActiveRecord::Migration[5.0]
  def change
    create_table :icecreams do |t|
      t.string :name
      t.string :flavor

      t.timestamps
    end
  end
end
