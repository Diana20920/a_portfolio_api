FactoryBot.define do
  factory :space do
    category { "MyString" }
    vacant { false }
    square_footage { 1.5 }
    dollar_per_sqft { "9.99" }
    site { nil }
  end
end
