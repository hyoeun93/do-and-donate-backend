class ChallengeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :money_pot, :payout, :img_url, :description, :start_date, :end_date, :donor_id, :donor
  has_many :challengecomments
  has_many :user_challenges
  has_many :users, through: :user_challenges 
end
