class AddUserChallengeIdToPictures < ActiveRecord::Migration[6.0]
  def change
    add_column :pictures, :user_challenge_id, :integer
  end
end
