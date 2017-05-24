# spec/factories/rooms.rb

FactoryGirl.define do
  factory :event do
    name              "Event"
    description       { Faker::Lorem.sentence(1) }
    location          { Faker::Address.city }
    price             { Faker::Commerce.price }
    capacity          3
    starts_at         { Faker::Date.forward(1) }
    description       { Faker::Date.forward(2) }
    includes_food     true
    includes_drinks   true
    active            true
    has_heating       true
    has_internet      true
    user_id           { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
