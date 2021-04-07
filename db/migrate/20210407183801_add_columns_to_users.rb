class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, null: false 
    add_column :users, :password_digest, :string, null: false 
    add_index :users, :username, unique: true 
    add_index :users, :password_digest 
  end
end
