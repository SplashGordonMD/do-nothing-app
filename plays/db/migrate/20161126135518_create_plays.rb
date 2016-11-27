class CreatePlays < ActiveRecord::Migration[5.0]
  def change
    create_table :plays do |t|
      t.string :type
      t.text :discription

      t.timestamps
    end
  end
end
