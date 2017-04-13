require 'faker'

User.delete_all
Auction.delete_all

25.times do
  User.create(email: Faker::Internet.free_email,
              username: Faker::Internet.user_name,
              password: '123'
              )
end

50.times do
  Auction.create( name: Faker::Music.instrument,
                  condition: "Not bad",
                  starts_at: DateTime.current,
                  ends_at: (DateTime.current + 10.days),
                  description: Faker::Hipster.paragraph,
                  user_id: rand(1..15)
    )
end
