FactoryBot.define do
  factory :site do
    name { Faker::App.name }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip_code { Faker::Address.zip_code }
    spaces_available { true }
    total_dollar_value_per_sqft { Faker::Commerce.price(range: 1000..40000.0, as_string: true) }
    portfolio { nil }
  end
end
