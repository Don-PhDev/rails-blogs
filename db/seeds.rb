# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.delete_all
User.delete_all
User.create!(
  email: "don@gmail.com",
  name: "Don Forrest",
  password: "password",
  password_confirmation: "password"
)

30.times do |x|
  Post.create(
    title: "Title no: #{x}",
    body: "This is a test body for #{x}",
    user_id: User.first.id
  )
end
