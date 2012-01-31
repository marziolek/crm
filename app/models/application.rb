class Application < ActiveRecord::Base
  validates_presence_of :name, :description, :version                   
  validates_uniqueness_of :name, :scope => :version, :message => "has this Version already"
end
