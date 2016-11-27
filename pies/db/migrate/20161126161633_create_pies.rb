class CreatePies < ActiveRecord::Migration[5.0]
  def change
    create_table :pies do |t|
      t.string :type
      t.text :variety

      t.timestamps
    end
  end
end
