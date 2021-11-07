# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Database cleanup started."
puts "..."
Request.destroy_all
User.destroy_all
puts "Database was cleaned!"

puts "Seeding started."
puts "..."
user1 = User.create!(full_name: 'John Snow', email: 'night_watcher@gmail.com', password: '123456')
user2 = User.create!(full_name: 'Daenerys Targaryen', email: 'stormborn@gmail.com', password: '123456')
user3 = User.create!(full_name: 'Tyrion Lannister', email: 'dwarfs@gmail.com', password: '123456', role: 'tech')
user4 = User.create!(full_name: 'Cidadão Instigado', email: 'citizen@gmail.com', password: '123456')
user5 = User.create!(full_name: 'Servidor Atarefado', email: 'worker@gmail.com', password: '123456', role: 'tech')
user6 = User.create!(full_name: 'Gerente Irritado', email: 'manager@gmail.com', password: '123456', role: 'manager')
Request.create!(instrument: 'Medidor de Gás', service: 'verification', citizen: user1)
Request.create!(instrument: 'Medidor de Energia Elétrica', service: 'expertise', citizen: user2, tech: user3)
Request.create!(instrument: 'Medidor de Água', service: 'verification', citizen: user4, tech: user5)
puts "Seed completed!"

# Enter this into the Rails console to instantiate users and requests:
# user1 = User.find(1)
# user2 = User.find(2)
# user3 = User.find(3)
# request1 = Request.find(1)
# request2 = Request.find(2)
