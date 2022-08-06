FactoryBot.define do
  factory :message do
    message { "MyText" }
    sender_user { nil }
    receiver_user { nil }
  end
end
