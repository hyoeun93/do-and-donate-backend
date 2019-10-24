class UserChallengeSerializer
  include FastJsonapi::ObjectSerializer
  include ImageHelper 
  attributes :datetime, :photos, :title, :completed, :charity, :user, :challenge
  
  attribute :photos_url do |user_challenge|
    photos_url(user_challenge)
  end
end
