class Client < ActiveRecord::Base
	has_many :sales
	has_many :promotions 
	has_many :orders
    validates :rfc, :presence => { message: "No puede dejarse vacío" }
	validates :nombre, :presence => { message: "No puede dejarse vacío" }
	validates :telefono, :presence => { message: "No puede dejarse vacío" }
	validates :email, :presence => { message: "No puede dejarse vacío" }
	validates :direccion, :presence => { message: "No puede dejarse vacío" }
	validates :facebook, :presence => { message: "No puede dejarse vacío" }
	validates :linkedIn, :presence => { message: "No puede dejarse vacío" }
    # Validamos que el identificador solo sea numerico
	validates :telefono, numericality: { only_integer: true , :message => "El telefono debe ser numerico" }
	validates :telefono, length: { in: 10..10 , message: "debe tener 10 caracteres"}

	# Validamos en una expresion regular nuestro email
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, format: {:with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido"}

	# Validamos que el rfc sea unico
	#validates :rfc, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}
	# Validamos que el rfc tenga entre 12 a 13 caracteres ya que hay personales morales o fisicas
	#validates :rfc, length: { in: 12..13 , message: "Debe tener 12 o 13 caracteres"}

end
