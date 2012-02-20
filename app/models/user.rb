class User < ActiveRecord::Base
  #attr_protected :admin
  belongs_to :client
  has_many :bugs
  
  validates_presence_of :login, :email
  validates_presence_of :client_id, :unless => :admin?
  validates_uniqueness_of :login, :email
  validates_confirmation_of :password, :on => :create
  validates_length_of :login, :minimum => 3
  
  validates_presence_of :password, :on=> :create
  validates_confirmation_of :password, :on => :create
  validates_length_of :password, :minimum => 3, :on => :create
  validates_length_of :password_confirmation, :minimum => 3, :on=> :create
  validates_presence_of :password, :on => :update, :if=>:password_change
  validates_confirmation_of :password, :on => :update,:if=>:password_change
  validates_length_of :password, :minimum => 3, :on => :update,:if=>:password_change
  validates_length_of :password_confirmation, :minimum => 3, :on => :update,:if=>:password_change
  
  acts_as_authentic do |config|
    config.crypted_password_field = :crypted_password
    config.require_password_confirmation = true
  end
  
  def password_change
      :password.blank?
  end
end
