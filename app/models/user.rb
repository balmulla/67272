class User < ApplicationRecord
    has_many :store_users
    has_many :stores, through: :store_users
end
