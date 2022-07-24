FactoryBot.define do
  factory :profile do
    user { nil }
    location { "MyString" }
    contact_no { "MyString" }
    emergency_contact { "MyString" }
    emergency_contact_no { "MyString" }
    interest { nil }
    account { nil }
  end
end
