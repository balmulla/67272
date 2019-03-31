class Store < ApplicationRecord
    has_many :store_users
    has_many :users, through: :store_users
    
    scope :alphabetical, -> {order("name ASC")}
    scope :exclusive, -> {where("exclusive = 't'")}
#    scope :by_breakfast, -> {where("opening_time < ?", Time.strptime("11am", "%I%P").strftime("%H:%M"))}
#    scope :by_lunch, -> {where("opening_time < ?", Time.strptime("4pm", "%I%P").strftime("%H:%M"))}
end
