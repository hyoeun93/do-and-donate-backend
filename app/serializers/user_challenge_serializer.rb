class UserChallengeSerializer
  include FastJsonapi::ObjectSerializer
  attributes :datetime, :photo, :title, :completed, :charity, :user, :challenge
  has_many :pictures
end
