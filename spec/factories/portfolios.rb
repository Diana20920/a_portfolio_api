FactoryBot.define do
  factory :portfolio do
    region { Faker::TvShows::GameOfThrones.house }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip_code { Faker::Address.zip_code }
    total_sqft { Faker::Number.decimal(l_digits: 8, r_digits: 1) }
    entity { nil }
  end
end