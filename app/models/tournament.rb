class Tournament < ApplicationRecord
    validates :title, presence: true
    validates :date, presence: true
    validates :location, presence: true
    validates :description, presence: true
    has_many_attached :images
end
