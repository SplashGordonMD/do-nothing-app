class CreateExtras < ActiveRecord::Migration[5.0]
  def change
    create_table :extras do |t|
      t.string :name
      t.string :heating

      t.timestamps
    end
  end
end
