class League < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 50 }
    validates :day, presence: true
    validates :time, presence: true
    validates :location, presence: true, length: { minimum: 5, maximum: 100 }
    validates :description, presence: true, length: { minimum: 5, maximum: 500 }
    has_many_attached :images
end
