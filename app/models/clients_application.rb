class ClientsApplication < ActiveRecord::Base
  validates_presence_of :start_date, :expire_date, :license_type, :number_of_computers, :product_key                   
  validates_numericality_of :number_of_computers, :greater_than => 0
  validates_uniqueness_of :product_key
end
