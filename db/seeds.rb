# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# puts 'CREATED ADMIN USER: ' << user.email

User.create! do |u|
  u.email = 'user1@example.com'
  u.password = 'abcdef'
  u.password_confirmation = 'abcdef'
end