class CreateSalesTargets < ActiveRecord::Migration
  def change
    create_table :sales_targets do |t|
      t.date :start_date
      t.date :end_date
      t.float :target
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
