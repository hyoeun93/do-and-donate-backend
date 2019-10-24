class UserChallenge < ApplicationRecord
    belongs_to :user
    belongs_to :charity, optional: true 
    belongs_to :challenge
    has_many :comments 
    has_many_attached :photos
end