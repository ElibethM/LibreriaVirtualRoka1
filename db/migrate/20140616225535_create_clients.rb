class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :rfc
      t.string :nombre
      t.string :telefono
      t.string :email
      t.string :direccion
      t.string :facebook
      t.string :linkedIn

      t.timestamps
    end
  end
end
