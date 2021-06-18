class Event < ApplicationRecord
    belongs_to :user
    has_many :attended_events
    
    validates :user, presence: true
    validates :date, presence: true
    validates :location, presence: true
end
