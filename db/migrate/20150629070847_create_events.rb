class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :content
      t.integer :category_id
      t.integer :user_id

      t.timestamps null: false
    end

    add_index :events, :category_id
    add_index :events, :user_id
  end
end
