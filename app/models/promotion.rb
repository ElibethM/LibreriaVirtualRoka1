class Promotion < ActiveRecord::Base
	# se agregan las relaciones entre las tablas de promociones  con empleados
belongs_to :costumer # belong sirve para singular donde pertenece 
has_one :employee # Relacion de uno a uno


validates :client_id, :employee_id, :fecha, :acuerdo, presence: {message: "Estos campos no pueden ir vacios"}


end