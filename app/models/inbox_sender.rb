class InboxSender < ApplicationRecord
  belongs_to :inbox
  belongs_to :user
end
