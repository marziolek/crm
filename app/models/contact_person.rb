class ContactPerson < ActiveRecord::Base
  validates_presence_of :name, :surname, :position, :phone, :email, :client_id 
  validates_uniqueness_of :email
	belongs_to :clients
end
