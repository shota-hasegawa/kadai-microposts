class Micropost < ApplicationRecord
    belongs_to :user
    
    validates :content, presence: true, length: {maximum: 255 }
    
    has_many :favorites
    has_many :reverses_of_likes, through: :favorites, source: :user
    
    
end
