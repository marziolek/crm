class Client < ActiveRecord::Base
  validates_presence_of :name, :address, :city, :postal_code, :regon
  validates_uniqueness_of :regon
	has_many :contact_people
	has_one :user

	def display_name
		"#{name} - #{city}"
	end

	has_many :clients_applications
	has_many :applications, :through => :clients_applications
end
