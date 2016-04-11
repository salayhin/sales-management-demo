class AddColumnToSalesTarget < ActiveRecord::Migration
  def change
    add_column :sales_targets, :user_id, :integer
  end
end
