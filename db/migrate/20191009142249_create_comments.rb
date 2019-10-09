class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_challenge_id
      t.text :content
    end
  end
end
