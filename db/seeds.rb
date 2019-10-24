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
Donor.create(name: "Geico", donor_img_url: 'https://s.yimg.com/ny/api/res/1.2/CCaSuRM0GfavUnBix_h8UQ--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/en-US/homerun/country_living_105/b752a0b416d998afe57094de5023f3e9')
Donor.create(name: "Petco", donor_img_url: 'https://ocbj.media.clients.ellingtoncms.com/img/photos/2015/08/18/Petco-Logo_t670.png?b3f6a5d7692ccc373d56e40cf708e3fa67d9af9d')
Donor.create(name: "CVS Pharmacy", donor_img_url: 'https://yt3.ggpht.com/a/AGF-l7-TTHgEVJREX_VmIAm9tOcNG9_bEUJ5hRofZg=s900-c-k-c0xffffffff-no-rj-mo')
Donor.create(name: "Hello Fresh", donor_img_url: 'http://www.graphis.com/media/uploads/cfe/entry/4add3e8b-9965-4fe5-a414-be164ff3f5ff/1_hellofresh_primary_logo_stacked.jpg')

Challenge.create(title: 'Drink a cup of water in the morning', money_pot: 20000 , payout: 2, img_url: nil, description: 'Drinking water first thing in the morning immediately helps rehydrate the body. The six to eight hours of recommended nightly sleep is a long period to go without any water consumption. Drinking a glass or two of water right when you wake up, however, is a good way to quickly rehydrate your body',
start_date: "2019-10-10", end_date: "2019-11-12", donor_id: Donor.find_by(name: 'Nike').id)
Challenge.create(title: 'Use paper straws', money_pot: 30000 , payout: 3, img_url: nil, description: 'On top of environmental friendliness, paper straws are also a great plastic alternative for those who cannot sip from a regular cup or who risk injury from using harder straws like glass and metal', 
start_date: "2019-10-10", end_date: "2019-10-30", donor_id: Donor.find_by(name: 'Starbucks').id)
Challenge.create(title: 'Read your favorite fall books', money_pot: 10000 , payout: 2, img_url: nil, description: 'When fall comes and the days grow shorter, there is nothing more comforting than a warm blanket and a good book.', 
start_date: "2019-10-15", end_date: "2019-11-10", donor_id: Donor.find_by(name: 'Barnes & Noble').id)
Challenge.create(title: 'Wake up at 6 AM', money_pot: 10000, payout: 2, img_url: nil, description: 'Once the normal time people wake up rolls around, you feel like you’re on pace to get much more done than the average person. And it feels good as hell.', 
start_date: "2019-10-30", end_date: "2019-11-15", donor_id: Donor.find_by(name: 'Birch Coffee').id)
Challenge.create(title: 'Take the stairs!', money_pot: 15000, payout: 3, img_url: nil, description: 'Take the Stairs is a compelling and challenging call for all of us to accomplish greatness. It not only shows you how to make self- discipline more sustainable, it will reignite your passion to achieve.',
start_date: "2019-11-10", end_date: "2019-11-17", donor_id: Donor.find_by(name: 'Geico').id )
Challenge.create(title: 'Walk your dog', money_pot: 20000, payout: 2, img_url: nil, description: 'Your dog’s daily walk is likely one of the highlights of his day. Going for a walk can provide your dog with more than just a bathroom break.',
start_date: "2019-11-01", end_date: "2019-11-08", donor_id: Donor.find_by(name: 'Petco').id)
Challenge.create(title: "Take supplements daily", money_pot: 10000, payout: 2, img_url: nil, description: 'Dietary supplements are products designed to augment your daily intake of nutrients, including vitamins and minerals.',
start_date: "2019-10-20", end_date: "2019-11-10", donor_id: Donor.find_by(name: 'CVS Pharmacy').id )
Challenge.create(title: 'Make your lunch', money_pot: 15000, payout: 3, img_url: nil, description: 'Do you ever end up spending $15 on a Chinese chicken salad during your lunch break for about 2 pieces of chicken? It’s the absolute worst – overpaying for a mediocre lunch for one serving while you’re at work. Now prepare lunch for yourself!',
start_date: "2019-11-01", end_date: "2019-11-08", donor_id: Donor.find_by(name: 'Hello Fresh').id)

Challengecomment.create(content: "Awesome!", challenge_id: Challenge.find_by(title: 'Drink a cup of water in the morning').id)

UserChallenge.create(title: 'My first challenge', user_id: User.find_by(username: 'Hyo').id, challenge_id: Challenge.find_by(title: 'Drink a cup of water in the morning').id , charity_id: Charity.find_by(name: 'Step Up for Students').id, datetime: Time.now, photo: nil)

Comment.create(user_challenge_id: UserChallenge.find_by(title: 'My first challenge').id, content: "this is awesome!🥳")