class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :nombre
      t.string :telefono
      t.string :email
      t.string :direccion
      t.string :tipoLibro

      t.timestamps
    end
  end
end
