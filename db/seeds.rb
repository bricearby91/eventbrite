# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do 
		
	first_name=Faker::Name.first_name	

	User.create(first_name:first_name,last_name:Faker::Name.last_name,email:"#{first_name}@yopmail.com")
end

Event.create(user:User.first,start_date:Time.now+3600*24*3,duration:14400, title:"Petite teuf chez Lucas", description:"drfghjkzjfijegzjgipjpzizrh", price:15, location:"Sceaux")

