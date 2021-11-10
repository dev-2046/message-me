# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([{ username: 'dev1', password: "123"}, { username: "dev2", password: "123"}])

messages = Message.create([{ body: "This is a fake message", user: User.last }, { body: "This is another fake message", user: User.last }])