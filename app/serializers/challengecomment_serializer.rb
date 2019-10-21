class ChallengecommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content
  belongs_to :challenge
end
