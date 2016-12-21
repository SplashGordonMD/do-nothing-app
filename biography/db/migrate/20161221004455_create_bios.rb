class CreateBios < ActiveRecord::Migration[5.0]
  def change
    create_table :bios do |t|
      t.string :name
      t.string :history

      t.timestamps
    end
  end
end
