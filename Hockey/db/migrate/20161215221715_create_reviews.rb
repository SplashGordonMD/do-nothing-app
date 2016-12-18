class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :text
      t.string :title
      t.string :user_id
      t.string :integer

      t.timestamps
    end
  end
end
