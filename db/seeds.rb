# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Event.destroy_all
User.destroy_all
Attendance.destroy_all

15.times do 
		
	first_name=Faker::Name.first_name	

	User.create(first_name:first_name,last_name:Faker::Name.last_name,email:"#{first_name}@yopmail.com",password:Faker::String.random(length: 6..10))
end

event_type= ["pendaison de crémaillere","apéritif","dîner","fête","goûter","déjeuner","brunch","soirée d'anniversaire","baby shower"] 


15.times do

organiser=User.all.sample
Event.create(user:organiser,start_date:Time.now+(3600*24*rand(1..7)),duration:(3600*rand(2..6)), title:"#{event_type.sample.capitalize} chez #{organiser.first_name.capitalize}", description:"Un événement festif et sympa pour une occasion très spéciale..", price:rand(1..40), location:Faker::Address.city)

end

