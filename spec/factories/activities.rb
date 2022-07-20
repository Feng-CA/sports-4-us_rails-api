FactoryBot.define do
  factory :activity do
    category { nil }
    title { "MyString" }
    description { "MyText" }
    date_time { "2022-07-19 23:49:24" }
    location { "MyString" }
    user { nil }
    cost { 1 }
    quantity_limit { 1 }
  end
end
