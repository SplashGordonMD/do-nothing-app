class CreateDerivatives < ActiveRecord::Migration[5.0]
  def change
    create_table :derivatives do |t|
      t.string :name
      t.string :body

      t.timestamps
    end
  end
end
