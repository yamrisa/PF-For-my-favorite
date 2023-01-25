class Event < ApplicationRecord
    belongs_to :user
    
    # 文字数1-10文字まで
    validates :title, length: { minimum: 1, maximum: 10 }
end
