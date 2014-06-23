class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :employee_id
      t.integer :client_id
      t.datetime :fechaPedido
      t.datetime :fechaParaEntregar
      t.datetime :fechaEntrega
      t.string :direccion
      t.boolean :cancelado
      t.boolean :enEspera
      t.boolean :entregado

      t.timestamps
    end
  end
end
