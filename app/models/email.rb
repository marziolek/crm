class Email < ActiveRecord::Base
  validates_presence_of :email_address, :title, :msg 
end
