class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :present_address, :string
    add_column :users, :permanent_address, :string
    add_column :users, :mobile, :string
    add_column :users, :designation, :string
    add_column :users, :join_date, :string
  end
end
