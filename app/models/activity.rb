class Activity < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings
end
