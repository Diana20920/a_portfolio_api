FactoryBot.define do
  factory :space do
    category { Faker::TvShows::Friends.location }
    vacant { true }
    square_footage { Faker::Number.decimal(l_digits: 3, r_digits: 1) }
    dollar_per_sqft { Faker::Commerce.price(range: 10..40.0, as_string: true) }
    site { nil }
  end
end
