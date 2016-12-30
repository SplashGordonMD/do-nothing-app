class CreateHunters < ActiveRecord::Migration[5.0]
  def change
    create_table :hunters do |t|
      t.string :sport
      t.string :season

      t.timestamps
    end
  end
end
