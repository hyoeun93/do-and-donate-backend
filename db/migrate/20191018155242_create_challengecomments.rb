class CreateChallengecomments < ActiveRecord::Migration[6.0]
  def change
    create_table :challengecomments do |t|
      t.integer :challenge_id
      t.text :content
    end
  end
end

