class Email < ActiveRecord::Base
  validates_presence_of :email_address, :title, :msg 
  validates_length_of :title, :msg, :minimum => 5, :allow_blank => false, :allow_nil => false 
end
