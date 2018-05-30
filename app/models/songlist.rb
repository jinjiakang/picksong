class Songlist < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :band, presence: true
    validates :category, presence: true
    
end
