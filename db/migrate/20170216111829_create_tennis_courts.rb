class CreateTennisCourts < ActiveRecord::Migration[5.0]
  def change
    create_table :tennis_courts do |t|
      t.string :nombre
      t.string :ubicacion
      t.string :descripcion

      t.timestamps
    end
  end
end
