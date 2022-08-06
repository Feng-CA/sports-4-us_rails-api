FactoryBot.define do
  factory :channel_message do
    message { "MyText" }
    category { nil }
    user { nil }
  end
end
