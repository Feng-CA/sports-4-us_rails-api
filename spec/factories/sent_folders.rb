FactoryBot.define do
  factory :sent_folder do
    message { "MyText" }
    sender_user { nil }
    receiver_user { nil }
  end
end
