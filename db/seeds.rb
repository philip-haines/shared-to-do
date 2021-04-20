# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


community1 = Community.create(name: 'My House')
community2 = Community.create(name: 'My Work')
community3 = Community.create(name: 'My Car')

user1 = User.create(name: "Phil", email: "email", username:"Phil", password:"1234", pin: 1234, admin: true)
user2 = User.create(name: "David", email: "email", username:"David", password:"abcd", pin: 4567, admin: false)

task1 = Task.create(community: community1, title: "Title1", description: "Task 1", priority: "Medium", assigned: false, )
task2 = Task.create(community: community2, title: "Title2", description: "Task 2", priority: "Medium", assigned: false, )
task3 = Task.create(community: community1, title: "Title3", description: "Task 3", priority: "Medium", assigned: false, )
task4 = Task.create(community: community1, title: "Title4", description: "Task 4", priority: "High", assigned: false, )

membership1 = Membership.create(user: user1, community: community1)
membership2 = Membership.create(user: user2, community: community2)

user_task1 = UserTask.create(user: user1, task: task1)
user_task2 = UserTask.create(user: user1, task: task2)
user_task3 = UserTask.create(user: user2, task: task3)

puts "seeded"