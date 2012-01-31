# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new(:login => 'admin', :password => 'admin1',
                :password_confirmation => 'admin1', 
                :email => 'mar.ziolek@gmail.com')
user.save
user.update_attribute(:admin, true)
