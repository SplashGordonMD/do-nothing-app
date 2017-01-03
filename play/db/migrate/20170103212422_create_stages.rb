class CreateStages < ActiveRecord::Migration[5.0]
  def change
    create_table :stages do |t|
      t.string :performance
      t.string :form

      t.timestamps
    end
  end
end
