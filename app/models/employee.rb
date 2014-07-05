class Employee < ActiveRecord::Base

    validates :nombre, :presence => { message: "No puede dejarse vacío" }
    validates :usuario, :presence => { message: "No puede dejarse vacío" }
    validates :password, :presence => { message: "No puede dejarse vacío" }
    validates :email, :presence => { message: "No puede dejarse vacío" }
    validates :direccion, :presence => { message: "No puede dejarse vacío" }
    validates :telefono, :presence => { message: "No puede dejarse vacío" }
    validates :meta, :presence => { message: "No puede dejarse vacío" }
    validates :gerente, :presence => { message: "No puede dejarse vacío" }
    validates :vendedor, :presence => { message: "No puede dejarse vacío" }

end
