FactoryBot.define do
  factory :user do
    username { |n| Faker::CryptoCoin}
    password { "password"}
  end
end