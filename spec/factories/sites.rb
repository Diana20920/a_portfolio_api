FactoryBot.define do
  factory :site do
    name { Faker::App.name }
    spaces_available { Faker::Boolean.boolean }
    total_dollar_value_per_sqft { Faker::Commerce.price(range: 1000..40000.0, as_string: true) }
    total_sqft { Faker::Number.decimal(l_digits: 5, r_digits: 1) }
    portfolio { nil }
  end
end
