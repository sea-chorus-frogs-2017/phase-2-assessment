require 'faker'

50.times do
  User.create!( username: Faker::Internet.user_name,
                email: Faker::Internet.email,
                password: "hey" )
end

conditions = ["New", "Like New", "Good", "Fair", "Poor"]

100.times do
  Item.create!( name: Faker::Book.title,
                condition: conditions.sample,
                starts_at: Faker::Date.backward(15),
                ends_at: Faker::Date.forward(15),
                description: Faker::Hipster.paragraph,
                user_id: rand(1..50) )
end
