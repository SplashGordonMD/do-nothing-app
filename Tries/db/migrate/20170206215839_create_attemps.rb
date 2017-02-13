class CreateAttemps < ActiveRecord::Migration[5.0]
  def change
    create_table :attemps do |t|
      t.string :dive
      t.string :difficulty

      t.timestamps
    end
  end
end
