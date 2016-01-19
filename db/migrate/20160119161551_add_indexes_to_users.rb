class AddIndexesToUsers < ActiveRecord::Migration
  def change
    add_index :users, :email
    add_index :users, :username
  end
end
