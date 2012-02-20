class Bug < ActiveRecord::Base
	belongs_to :status
	belongs_to :application
	belongs_to :user
	
	validates_presence_of :application_id, :user_id, :topic, :description, :status_id      
end
