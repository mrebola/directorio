class CreateNegocios < ActiveRecord::Migration
  def change
    create_table :negocios do |t|
      t.string :nombre
      t.text :descripcion
      t.string :www
      t.string :localidad
      t.string :telefono
      t.string :horarios
      t.string :direccion

      t.timestamps
    end
  end
end
