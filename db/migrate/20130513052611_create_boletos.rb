class CreateBoletos < ActiveRecord::Migration
  def change
    create_table :boletos do |t|
      t.string :nombre
      t.string :asiento_id_seq
      t.text :direccion
      t.decimal :precio_pagar
      t.string :email_direccion

      t.timestamps
    end
  end
end
