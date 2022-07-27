class Inbox < ApplicationRecord
  belongs_to :user
  has_one :inbox_sender
end
