class CreateBuilds < ActiveRecord::Migration[5.0]
  def change
    create_table :builds do |t|
      t.code :name
      t.string :type

      t.timestamps
    end
  end
end
