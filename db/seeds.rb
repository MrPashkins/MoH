# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             #inn: 123456789,
             certificate: "random",
             phone_number: "+380 000 000 00 00",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

#require "faker"
#I18n.reload!

10.times do 
	#|n|
  ename  = Faker::Name.name
  #email = "example-#{n+1}@railstutorial.org"
  email = Faker::Internet.email
  #inn = Faker::Number.between(1,20)
  certificate = Faker::Beer.name
  phone_number = Faker::PhoneNumber.cell_phone
  password = "password"
  User.create!(name:  ename,
               email: email,
               #inn: inn,
               certificate: certificate,
               phone_number: phone_number,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end