class Store < ApplicationRecord
    has_many :store_users
    has_many :users, through: :store_users
    
    validates_presence_of :name
    scope :alphabetical, -> {order("name ASC")}
    scope :exclusive, -> {where("exclusive = 't'")}

    def breakfast?
        opening_time.strftime("%H:%M") <= Time.strptime("10am", "%I%P").strftime("%H:%M") and closing_time.strftime("%H:%M") >= Time.strptime("11am", "%I%P").strftime("%H:%M")
    end
    
    def lunch?
        opening_time.strftime("%H:%M") <= Time.strptime("4pm", "%I%P").strftime("%H:%M") and closing_time.strftime("%H:%M") >= Time.strptime("5pm", "%I%P").strftime("%H:%M")
    end
    
    def dinner?
        opening_time.strftime("%H:%M") <= Time.strptime("7pm", "%I%P").strftime("%H:%M") and closing_time.strftime("%H:%M") >= Time.strptime("10pm", "%I%P").strftime("%H:%M")
    end
    
end
