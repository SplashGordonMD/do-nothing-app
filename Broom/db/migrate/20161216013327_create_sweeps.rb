class CreateSweeps < ActiveRecord::Migration[5.0]
  def change
    create_table :sweeps do |t|
      t.string :clean
      t.string :brush

      t.timestamps
    end
  end
end
