# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(username: 'steven', email: 'steven@example.com', password:'password')
5.times do 
  u = User.create!(username: Faker::Internet.user_name, email: Faker::Internet.safe_email, password:'password')
  10.times do
     u.posts.create!(title: Faker::Lorem.sentence, 
      body: Faker::Lorem.paragraph(5))
  end
end
