class CreateBugs < ActiveRecord::Migration[5.0]
  def change
    create_table :bugs do |t|
      t.string :name
      t.text :season

      t.timestamps
    end
  end
end
