class CreateSaleDetails < ActiveRecord::Migration
  def change
    create_table :sale_details do |t|
      t.integer :sale_id
      t.integer :book_id
      t.integer :cantidad
      t.decimal :precio
      t.integer :descuento
      t.decimal :total

      t.timestamps
    end
  end
end
