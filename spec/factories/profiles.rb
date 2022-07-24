FactoryBot.define do
  factory :profile do
    user { nil }
    location { "MyString" }
    contact_no { "MyString" }
    emergency_contact { "MyString" }
    emergency_contact_no { "MyString" }
    cycling { false }
    golf { false }
    tennis { false }
    soccer { false }
    hiking { false }
    cricket { false }
    running { false }
    basketball { false }
    account { nil }
  end
end
