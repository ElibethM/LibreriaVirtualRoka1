class Promotion < ActiveRecord::Base
	# se agregan las relaciones entre las tablas de promociones  con empleados
belongs_to :client, :autosave  => true# belong sirve para singular donde pertenece 
belongs_to :employee # Relacion de uno a uno


validates :client_id, :employee_id, :fecha, :acuerdo, presence: {message: "Estos campos no pueden ir vacios"}


end