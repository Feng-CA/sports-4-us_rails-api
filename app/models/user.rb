class User < ApplicationRecord
    has_secure_password
    has_many :activities
    has_many :inboxes
    has_many :inbox_senders
    has_one :profile
    has_many :sender_user_id_inboxes, :class_name => 'Inbox', :foreign_key => 'sender_user_id'
    has_many :receiver_user_id_inboxes, :class_name => 'Inbox', :foreign_key => 'receiver_user_id'

    #belongs_to :profile
    #validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
