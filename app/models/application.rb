class Application < ActiveRecord::Base
  validates_presence_of :name, :description, :version                   
  validates_uniqueness_of :name, :scope => :version, :message => "has this Version already"
		
	has_many :clients_applications
	has_many :clients, :through => :clients_applications
	
	def display_name
		"#{name} - #{version}"
	end
end
