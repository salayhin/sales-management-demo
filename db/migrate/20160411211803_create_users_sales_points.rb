class CreateUsersSalesPoints < ActiveRecord::Migration
  def change
    create_table :users_sales_points do |t|
      t.integer :user_id
      t.integer :sales_point_id
      t.timestamps null: false
    end
  end
end
