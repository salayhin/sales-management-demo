class RenameProductTableCOlumn < ActiveRecord::Migration
  def change
    rename_column :products, :in_stoct, :in_stock
  end
end
