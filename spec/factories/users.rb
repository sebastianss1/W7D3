FactoryBot.define do
  factory :user do
    username { |n| Faker::FunnyName}
    password { "password"}
  end
end