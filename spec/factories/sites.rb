FactoryBot.define do
  factory :site do
    name { "MyString" }
    spaces_available { false }
    total_dollar_value_per_sqft { "9.99" }
    total_sqft { 1.5 }
    portfolio { nil }
  end
end
