class User < ApplicationRecord
    has_many :store_users
    has_many :stores, through: :store_users
    has_secure_password
    
    validates_presence_of :name
    validates_format_of :phone, with: /\A\(?\d{3}\)?[-. ]?\d{3}[-.]?\d{4}\z/, message: "should be 10 digits (area code needed) and delimited with dashes only", allow_blank: true

end
