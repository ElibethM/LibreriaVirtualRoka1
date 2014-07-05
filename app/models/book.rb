class Book < ActiveRecord::Base
	validates :isbn, :titulo, :autor, :editorial, :precio, :existencias, presence: {message: "Obligatorio"}
    validates :titulo, uniqueness: {message: "Debe ser unico"}
    validates :isbn, :presence => { message: "No puede dejarse vacío" }
    validates :titulo, :presence => { message: "No puede dejarse vacío" }
    validates :autor, :presence => { message: "No puede dejarse vacío" }
    validates :editorial, :presence => { message: "No puede dejarse vacío" }
    validates :precio, :presence => { message: "No puede dejarse vacío" }
    validates :existencias, :presence => { message: "No puede dejarse vacío" }
   
   
end


