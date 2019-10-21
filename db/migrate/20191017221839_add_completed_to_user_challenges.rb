class AddCompletedToUserChallenges < ActiveRecord::Migration[6.0]
  def change
    add_column :user_challenges, :completed, :boolean
  end
end
