class Challenge < ApplicationRecord
    has_many :challengecomments
    has_many :user_challenges
    has_many :users, through: :user_challenges 
    belongs_to :donor


    def to_json
        {
            id: self.id,
            title: self.title,
            money_pot: self.money_pot,
            payout: self.payout,
            # "img_url": null,
            # "description": null,
            # "start_date": "2019-10-10T00:00:00.000Z",
            # "end_date": "2019-11-12T00:00:00.000Z",
            donor_id: self.donor_id,
            donor: self.donor,
            challengecomments: self.challengecomments
        }
    end 
end