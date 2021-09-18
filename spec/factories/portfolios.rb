FactoryBot.define do
  factory :portfolio do
    region { Faker::TvShows::GameOfThrones.house }
    total_sqft { Faker::Number.decimal(l_digits: 8, r_digits: 1) }
    entity { nil }
  end
end
