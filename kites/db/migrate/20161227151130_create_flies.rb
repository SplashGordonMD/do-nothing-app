class CreateFlies < ActiveRecord::Migration[5.0]
  def change
    create_table :flies do |t|
      t.string :kind
      t.string :wing

      t.timestamps
    end
  end
end
