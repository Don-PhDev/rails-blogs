# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.delete_all

30.times do |x|
  Blog.create(
    title: "Title no: #{x}",
    body: "This is a test body for #{x}",
    user_id: User.first.id
  )
end
