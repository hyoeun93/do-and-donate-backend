# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Charity.destroy_all
Donor.destroy_all
Challenge.destroy_all
UserChallenge.destroy_all
Comment.destroy_all
Challengecomment.destroy_all

User.create(username: "Hyo", password_digest: "12345", email: 'a@a.com')
User.create(username: "Green", password_digest: "123456", email: 'b@b.com')

Charity.create(name: "Step Up for Students" , web_address: "https://www.stepupforstudents.org/")
Charity.create(name: "American National Red Cross" , web_address: "https://www.redcross.org/")
Charity.create(name: "World Wildlife Fund" , web_address: "https://www.worldwildlife.org/")

Donor.create(name: "Nike", donor_img_url: 'http://cdn.shopify.com/s/files/1/1431/4540/products/NIKE_Logo_AIR_Jordan_JumpMan_23_HUGE_Flight_Wall_Decal_Sticker_grande.jpg?v=1526782062')
Donor.create(name: "Starbucks", donor_img_url: 'http://www.artitudesdesign.com/wp-content/uploads/2017/02/starbucks_featured_image-1.jpg')
Donor.create(name: "Barnes & Noble", donor_img_url: 'https://s11284.pcdn.co/wp-content/uploads/2013/09/CompanyLogos_BarnesNoble-logo.jpg')
Donor.create(name: "Birch Coffee", donor_img_url: 'https://birchcoffee.com/v4/wp-content/uploads/2015/11/birchtree-footer.png')

Challenge.create(title: 'Drink a cup of water in the morning', money_pot: 20000 , payout: 2, img_url: nil, description: nil, start_date: "2019-10-10", end_date: "2019-11-12", donor_id: Donor.find_by(name: 'Nike').id)
Challenge.create(title: 'Use paper straws', money_pot: 30000 , payout: 3, img_url: nil, description: nil, start_date: "2019-10-10", end_date: "2019-10-30", donor_id: Donor.find_by(name: 'Starbucks').id)
Challenge.create(title: 'Read your favorite fall books', money_pot: 10000 , payout: 2, img_url: nil, description: nil, start_date: "2019-10-15", end_date: "2019-11-10", donor_id: Donor.find_by(name: 'Barnes & Noble').id)
Challenge.create(title: 'Wake up at 6 AM', money_pot: 10000, payout: 2, img_url: nil, description: nil, start_date: "2019-10-30", end_date: "2019-11-15", donor_id: Donor.find_by(name: 'Birch Coffee').id)

Challengecomment.create(content: "Awesome!", challenge_id: Challenge.find_by(title: 'Drink a cup of water in the morning').id)

UserChallenge.create(title: 'My first challenge', user_id: User.find_by(username: 'Hyo').id, challenge_id: Challenge.find_by(title: 'Drink a cup of water in the morning').id , charity_id: Charity.find_by(name: 'Step Up for Students').id, datetime: Time.now, photo: nil)

Comment.create(user_challenge_id: UserChallenge.find_by(title: 'My first challenge').id, content: "this is awesome!🥳")