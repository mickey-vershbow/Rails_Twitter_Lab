class Tweet < ApplicationRecord
    validates :title, presence: true
    has_many :replies
end
