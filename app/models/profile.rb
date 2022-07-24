class Profile < ApplicationRecord
  belongs_to :user
  belongs_to :interest
  belongs_to :account
end
