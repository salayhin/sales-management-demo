class CreateSalesPoints < ActiveRecord::Migration
  def change
    create_table :sales_points do |t|
      t.string :name
      t.integer :location_id
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
