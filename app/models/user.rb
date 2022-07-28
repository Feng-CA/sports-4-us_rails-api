class User < ApplicationRecord
    has_secure_password
    has_many :activities
    has_many :bookings
    has_many :channel_messages
    has_one :profile
    has_many :sender_user_id_messages, :class_name => 'Message', :foreign_key => 'sender_user_id'
    has_many :receiver_user_id_messages, :class_name => 'Message', :foreign_key => 'receiver_user_id'
    has_many :sender_user_id_messages, :class_name => 'SentFolder', :foreign_key => 'sender_user_id'
    has_many :receiver_user_id_messages, :class_name => 'SentFolder', :foreign_key => 'receiver_user_id'
    #belongs_to :profile
    #validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
