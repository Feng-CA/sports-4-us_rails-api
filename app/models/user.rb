class User < ApplicationRecord
    has_secure_password
    has_many :activities
    has_one :profile
    #belongs_to :profile
    #validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
end
