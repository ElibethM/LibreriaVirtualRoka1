class Provider < ActiveRecord::Base
	validates :nombre, :telefono, :email, :direccion, :tipoLibro, presence: {message: "Obligatorio"}
end
