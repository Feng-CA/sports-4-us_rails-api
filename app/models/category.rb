class Category < ApplicationRecord
    has_many :activities
    has_many :channel_messages
end
