class CreateUserChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :user_challenges do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.integer :charity_id
      t.datetime :datetime
      t.string :photo
    end
  end
end
