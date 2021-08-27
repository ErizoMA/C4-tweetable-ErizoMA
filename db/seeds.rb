# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Charging Seeds..."
user1 = User.create(email: 'user1@mail.com', username: 'admin', name: 'Usuario 1', password: '123456')
User.find(1).avatar.attach(io: File.open("app/assets/images/user-1.svg"), filename: "user-1.svg")
user2 = User.create(email: 'user2@mail.com', username: 'user2', name: 'Usuario 2', password: '123456')
User.find(2).avatar.attach(io: File.open("app/assets/images/user-2.svg"), filename: "user-2.svg")
user3 = User.create(email: 'user3@mail.com', username: 'user3', name: 'Usuario 3', password: '123456')
User.find(3).avatar.attach(io: File.open("app/assets/images/user-3.svg"), filename: "user-3.svg")
user4 = User.create(email: 'user4@mail.com', username: 'user4', name: 'Usuario 4', password: '123456')
User.find(4).avatar.attach(io: File.open("app/assets/images/user-4.svg"), filename: "user-4.svg")
user5 = User.create(email: 'user5@mail.com', username: 'user5', name: 'Usuario 5', password: '123456')
User.find(5).avatar.attach(io: File.open("app/assets/images/user-5.svg"), filename: "user-5.svg")
user6 = User.create(email: 'user6@mail.com', username: 'user6', name: 'Usuario 6', password: '123456')
User.find(6).avatar.attach(io: File.open("app/assets/images/user-6.svg"), filename: "user-6.svg")
user7 = User.create(email: 'user7@mail.com', username: 'user7', name: 'Usuario 7', password: '123456')
User.find(7).avatar.attach(io: File.open("app/assets/images/user-7.svg"), filename: "user-7.svg")

tweet_1 = Tweet.create(body:"Tweet 1 creado por usuario 7",user:User.last)
tweet_2 = Tweet.create(body:"Tweet 2 creado por usuario 1",user:User.first)
tweet_3 = Tweet.create(body:"Tweet 3 creado por usuario 2",user:User.second)


Comment.create(user:User.first,tweet:Tweet.first,body:"Usuario 1 responde al Tweet 1 creado por Usuario 7")
Comment.create(user:User.second,tweet:Tweet.first,body:"Usuario 2 responde al Tweet 1 creado por Usuario 7")
Comment.create(user:User.third,tweet:Tweet.first,body:"Usuario 3 responde al Tweet 1 creado por Usuario 7")

Comment.create(user:User.first,tweet:Tweet.second,body:"Usuario 1 responde al Tweet 2 creado por Usuario 1")
Comment.create(user:User.second,tweet:Tweet.second,body:"Usuario 2 responde al Tweet 2 creado por Usuario 1")
Comment.create(user:User.third,tweet:Tweet.second,body:"Usuario 3 responde al Tweet 2 creado por Usuario 1")

Comment.create(user:User.first,tweet:Tweet.third,body:"Usuario 1 responde al Tweet 3 creado por Usuario 2")
Comment.create(user:User.second,tweet:Tweet.third,body:"Usuario 2 responde al Tweet 3 creado por Usuario 2")
Comment.create(user:User.third,tweet:Tweet.third,body:"Usuario 3 responde al Tweet 3 creado por Usuario 2")