# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@user = User.create(email: 'user1@test.com', password: 'password', password_confirmation: 'password', first_name: 'Steve', last_name: 'Torrence')

puts '1 User has been created'

AdminUser.create(email: 'admin@test.com', password: 'password', password_confirmation: 'password', first_name: 'Admin', last_name: 'User')

puts '1 AdminUser has been created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rational content", user_id: @user.id)
end

puts '100 Posts have been created'