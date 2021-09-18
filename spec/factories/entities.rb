FactoryBot.define do
  factory :entity do
    name { Faker::Company.name }
    address { Faker::Address.full_address }
  end
end
