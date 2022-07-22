FactoryBot.define do
  factory :activity do
    category { nil }
    title { "MyString" }
    description { "MyText" }
    date_time { "MyString" }
    location { "MyString" }
    user { nil }
    cost { 1 }
    quantity_limit { 1 }
  end
end
