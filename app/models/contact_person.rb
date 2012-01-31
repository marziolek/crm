class ContactPerson < ActiveRecord::Base
  validates_presence_of :name, :surname, :position, :phone, :email                   
  validates_uniqueness_of :email
end
