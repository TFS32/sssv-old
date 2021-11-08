# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Database cleanup started."
puts "..."
Request.destroy_all
User.destroy_all
puts "Database was cleaned!"

puts "Seeding started."
puts "..."
user1 = User.create!(full_name: 'John Snow', email: 'night_watcher@gmail.com', password: '123456', location: 'Mato Grosso')
user2 = User.create!(full_name: 'Daenerys Targaryen', email: 'stormborn@gmail.com', password: '123456', location: 'Mato Grosso')
user3 = User.create!(full_name: 'Tyrion Lannister',  email: 'dwarfs@gmail.com', password: '123456', role: 'tech', location: 'Mato Grosso')
user4 = User.create!(full_name: 'Cidadão Instigado', email: 'citizen@gmail.com', password: '123456', location: 'Minas Gerais')
user5 = User.create!(full_name: 'Servidor Atarefado', email: 'worker@gmail.com', password: '123456', role: 'tech', location: 'Minas Gerais')
user6 = User.create!(full_name: 'Citizen Irritado', email: 'citiz@gmail.com', password: '123456', location: 'Rio de Janeiro')
user7 = User.create!(full_name: 'Tech Irritado', email: 'tech@gmail.com', password: '123456', role: 'tech', location: 'Rio de Janeiro')
user8 = User.create!(full_name: 'Gerente Irritado', email: 'manager@gmail.com', password: '123456', role: 'manager', location: 'Rio de Janeiro')
user9 = User.create!(full_name: 'Augusto Mendonça', email: 'augustoapo@gmail.com', password: '123456', role: 'tech', location: 'Mato Grosso')
Request.create!(instrument: 'Medidor de Água', service: 'verification', citizen: user1, location: 'Mato Grosso',  description: 'Serviço de verificação do medidor de água')
Request.create!(instrument: 'Medidor de Gás', service: 'Verification', citizen: user1, location: 'Mato Grosso', description: 'Serviço de verificação do medidor de gás')
Request.create!(instrument: 'Medidor de Energia Elétrica', status: 'Em andamento', service: 'Expertise', citizen: user2, tech: user3, location: 'Mato Grosso', description: 'Serviço de perícia do medidor de energia elétrica')
Request.create!(instrument: 'Medidor de Gás', service: 'Verification', citizen: user4, location: 'Minas Gerais', description: 'Serviço de verificação do medidor de gás')    
Request.create!(instrument: 'Medidor de Água', status: 'Em andamento', service: 'verification', citizen: user4, tech: user5, location: 'Minas Gerais',  description: 'Serviço de verificação do medidor de água')
Request.create!(instrument: 'Medidor de Energia Elétrica', service: 'Expertise', citizen: user5, location: 'Minas Gerais', description: 'Serviço de perícia do medidor de energia elétrica')
Request.create!(instrument: 'Medidor de Gás', service: 'Verification', citizen: user6, location: 'Rio de Janeiro', description: 'Serviço de verificação do medidor de gás')
Request.create!(instrument: 'Medidor de Energia Elétrica', status: 'Em andamento', service: 'Expertise', citizen: user6, tech: user7, location: 'Rio de Janeiro', description: 'Serviço de perícia do medidor de energia elétrica')
Request.create!(instrument: 'Medidor de Água', service: 'verification', citizen: user6, location: 'Rio de Janeiro',  description: 'Serviço de verificação do medidor de água')    
puts "Seed completed!"

# Enter this into the Rails console to instantiate users and requests:
# user1 = User.find(1)
# user2 = User.find(2)
# user3 = User.find(3)
# request1 = Request.find(1)
# request2 = Request.find(2)
