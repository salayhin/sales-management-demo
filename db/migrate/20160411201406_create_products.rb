class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image
      t.boolean :in_stoct

      t.timestamps null: false
    end
  end
end
