FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    password { Faker::Internet.password }
  end

  factory :question do
    body { Faker::Lorem.sentence }
    title { Faker::Lorem.paragraph}
    user
  end
end