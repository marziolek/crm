class Bug < ActiveRecord::Base
	belongs_to :status
	belongs_to :application
end
