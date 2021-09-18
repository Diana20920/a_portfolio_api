FactoryBot.define do
  factory :portfolio do
    region { Faker::Types.rb_string }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address. }
    zip_code { Faker::Address.zip_code }
    total_sqft { Faker::Number.decimal(l_digits: 8, r_digits: 1) }
    entity { nil }
  end
end
