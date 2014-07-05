class SaleDetail < ActiveRecord::Base
	 belongs_to :book
	 belongs_to :Sale 
end
