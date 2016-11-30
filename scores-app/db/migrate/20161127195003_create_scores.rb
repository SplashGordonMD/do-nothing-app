class CreateScores < ActiveRecord::Migration[5.0]
  def change
    create_table :scores do |t|
      t.string :chip
      t.text :putt

      t.timestamps
    end
  end
end
