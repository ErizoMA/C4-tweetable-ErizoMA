# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Charging Seeds..."
puts "Creating users"
user1 = User.create(email: 'user1@mail.com', username: 'user1', name: 'Usuario 1', password: 'password')
user1.avatar.attach(io: File.open("app/assets/images/user_1.png"), filename: "user_1.png")
user2 = User.create(email: 'user2@mail.com', username: 'user2', name: 'Usuario 2', password: 'password')
user2.avatar.attach(io: File.open("app/assets/images/user_2.png"), filename: "user_2.png")
user3 = User.create(email: 'user3@mail.com', username: 'user3', name: 'Usuario 3', password: 'password')
user3.avatar.attach(io: File.open("app/assets/images/user_3.png"), filename: "user_3.png")
user4 = User.create(email: 'user4@mail.com', username: 'user4', name: 'Usuario 4', password: 'password')
user4.avatar.attach(io: File.open("app/assets/images/user_4.png"), filename: "user_4.png")
user5 = User.create(email: 'user5@mail.com', username: 'user5', name: 'Usuario 5', password: 'password')
user5.avatar.attach(io: File.open("app/assets/images/user_5.png"), filename: "user_5.png")
user6 = User.create(email: 'user6@mail.com', username: 'user6', name: 'Usuario 6', password: 'password')
user6.avatar.attach(io: File.open("app/assets/images/user_6.png"), filename: "user_6.png")
user7 = User.create(email: 'tester@mail.com', username: 'tester', name: 'Usuario 7', password: 'tester')
user7.avatar.attach(io: File.open("app/assets/images/user_7.png"), filename: "user_7.png")
puts "Creating tweets"
tweet_1 = Tweet.create(body:"Hi my email es tester@mail.com and my password: tester, test the app with me ...",user:User.last)
tweet_2 = Tweet.create(body:"Tweet 2 creado por usuario 1",user:User.first)
tweet_3 = Tweet.create(body:"Tweet 3 creado por usuario 2",user:User.second)

puts "Creating comments"

Comment.create(user:User.first,tweet:Tweet.first,body:"Usuario 1 responde al Tweet 1 creado por tester")
Comment.create(user:User.last,tweet:Tweet.first,body:"Tester responde al Tweet")
Comment.create(user:User.second,tweet:Tweet.first,body:"Usuario 2 responde al Tweet 1 creado por tester")
Comment.create(user:User.third,tweet:Tweet.first,body:"Usuario 3 responde al Tweet 1 creado por tester")
Comment.create(user:User.last,tweet:Tweet.first,body:"Tester responde al Tweet")

Comment.create(user:User.last,tweet:Tweet.second,body:"Tester por aqui tambien")
Comment.create(user:User.first,tweet:Tweet.second,body:"Usuario 1 responde al Tweet 2 creado por Usuario 1")
Comment.create(user:User.second,tweet:Tweet.second,body:"Usuario 2 responde al Tweet 2 creado por Usuario 1")
Comment.create(user:User.third,tweet:Tweet.second,body:"Usuario 3 responde al Tweet 2 creado por Usuario 1")
Comment.create(user:User.last,tweet:Tweet.second,body:"Tester responde al Tweet")


Comment.create(user:User.first,tweet:Tweet.third,body:"Usuario 1 responde al Tweet 3 creado por Usuario 2")
Comment.create(user:User.second,tweet:Tweet.third,body:"Usuario 2 responde al Tweet 3 creado por Usuario 2")
Comment.create(user:User.last,tweet:Tweet.third,body:"Tester responde al Tweet")
Comment.create(user:User.third,tweet:Tweet.third,body:"Usuario 3 responde al Tweet 3 creado por Usuario 2")
Comment.create(user:User.last,tweet:Tweet.third,body:"Tester aun por aqui")



puts "Seeds created..."

