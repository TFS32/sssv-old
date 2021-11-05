# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting to seed"
puts "..."
user1 = User.create!(full_name: 'John Snow', email: 'night_watcher@gmail.com', password: '123456')
user2 = User.create!(full_name: 'Daenerys Targaryen', email: 'stormborn@gmail.com', password: '123456')
user3 = User.create!(full_name: 'Tyrion Lannister', email: 'dwarfs@gmail.com', password: '123456')
Request.create!(instrument: 'gas', service: 'verification', status: 'aberta', citizen: user1)
Request.create!(instrument: 'luz', service: 'expertise', status: 'aberta', citizen: user2, tech: user3)
puts "Seed completed"


# Enter this into the Rails console to instantiate users and requests:
# user1 = User.find(1)
# user2 = User.find(2)
# user3 = User.find(3)
# request1 = Request.find(1)
# request2 = Request.find(2)
