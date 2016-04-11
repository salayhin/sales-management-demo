class AddSaleDate < ActiveRecord::Migration
  def change
    add_column :daily_sales_reports, :sales_date, :date
  end
end
