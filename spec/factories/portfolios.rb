FactoryBot.define do
  factory :portfolio do
    region { Faker::TvShows::GameOfThrones.house }
    entity { nil }
  end
end
