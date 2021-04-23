# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


community1 = Community.create(name: 'House')
community2 = Community.create(name: 'Work')
community3 = Community.create(name: 'School')

user1 = User.create(name: "Phil", email: "email", username:"Phil", password:"1234", pin: 1234, admin: true)
user2 = User.create(name: "David", email: "email", username:"David", password:"abcd", pin: 4567, admin: false)

task1 = Task.create(community: community1, title: "Wash Clothes", description: "Please make sure to use the good soap", priority: "medium", assigned: false, )
task2 = Task.create(community: community2, title: "File the TPS reports", description: "Do not omit the cover page", priority: "low", assigned: false, )
task3 = Task.create(community: community1, title: "Clean Fireplace", description: "Make sure to wear a mask!!!", priority: "medium", assigned: false, )
task4 = Task.create(community: community2, title: "Find my stapler", description: "I think that Jim took it again", priority: "high", assigned: false, )

membership1 = Membership.create(user: user1, community: community1)
membership2 = Membership.create(user: user1, community: community2)
membership3 = Membership.create(user: user1, community: community3)

puts "seeded"