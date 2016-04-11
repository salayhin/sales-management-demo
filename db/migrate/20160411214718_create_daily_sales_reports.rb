class CreateDailySalesReports < ActiveRecord::Migration
  def change
    create_table :daily_sales_reports do |t|
      t.integer :user_id
      t.integer :sales_point_id
      t.text :comments
      t.string :invoice
      t.string :other_image
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
