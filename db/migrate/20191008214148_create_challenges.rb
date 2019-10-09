class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.integer :money_pot
      t.integer :payout
      t.string :img_url
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :donor_id
    end
  end
end
