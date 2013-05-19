class AddTelefonoToBoletos < ActiveRecord::Migration
  def change
    add_column :boletos, :telefono, :string
    add_column :boletos, :string, :string
  end
end
