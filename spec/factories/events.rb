FactoryGirl.define do
  factory :event do
    title { Faker::Lorem.word }
    event_date { Faker::Date.forward(1) }
    repeat 0
  end
end
