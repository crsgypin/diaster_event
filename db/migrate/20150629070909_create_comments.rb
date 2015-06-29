class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :event_id

      t.timestamps null: false
    end

    add_index :comments, :user_id   
    add_index :comments, :event_id  
  end
end
