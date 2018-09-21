# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(email: "test@joshsoftware.com", password: "josh123")
user2 = User.create!(email: "test1@joshsoftware.com", password: "josh123")
user3 = User.create!(email: "test2@joshsoftware.com", password: "josh123")

Mail.create!(subject: "React Workshop", to: user2.email, status: "sent", body: "Test Body", user: user1)
Mail.create!(subject: "React Workshop", from: user1.email, status: "inbox", body: "Test Body", user: user2)
