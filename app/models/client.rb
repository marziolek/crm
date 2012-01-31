class Client < ActiveRecord::Base
  validates_presence_of :name, :address, :city, :postal_code, :regon
  validates_uniqueness_of :regon
end
