# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Listing.destroy_all
Favorite.destroy_all

u1 = User.create(username:'dan',password:'123')
u2 = User.create(username:'rick',password:'123')
u3 = User.create(username:'tim',password:'123')

users = [u1,u2,u3]
conditions = ['new','brand-new','fair','ok','poor']
100.times do 
curUser = users.sample()
curUser.ownlistings.create(title:Faker::Coffee.blend_name,condition:conditions.sample(),price:rand(20..2000),units:rand(1..20))
end

u1.ownlistings.create(title:'car',condition:'new', price:2000,units:1)
u2.ownlistings.create(title:'iphone',condition:'brand new', price:1500,units:6)