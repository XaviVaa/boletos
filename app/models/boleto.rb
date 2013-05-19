class Boleto < ActiveRecord::Base
  attr_accessible :asiento_id_seq, :direccion, :email_direccion, :nombre, :precio_pagar, :telefono
end
