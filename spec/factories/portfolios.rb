FactoryBot.define do
  factory :portfolio do
    region { "MyString" }
    street_address { "MyString" }
    city { "MyString" }
    state { "MyString" }
    zip_code { "MyString" }
    total_sqft { 1.5 }
    entity { nil }
  end
end
