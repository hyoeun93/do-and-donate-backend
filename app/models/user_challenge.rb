class UserChallenge < ApplicationRecord
    belongs_to :user
    belongs_to :charity
    belongs_to :challenge
    has_many :comments 
end