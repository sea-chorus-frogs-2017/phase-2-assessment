require 'faker'
condition = ["good", "excellent", "new", "fair", "poor", "as-is"]



5.times do
  Item.create(name: Faker::Commerce.product_name,
              condition: condition.sample,
              description: Faker::Lorem.sentence,
              start_time: DateTime.now,
              end_time: DateTime.new(2017,4,15,5,30,0),
              bid: 0,
              user_id: 1)
end
