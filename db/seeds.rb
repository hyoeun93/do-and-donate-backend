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

Charity.create(name: "Step Up for Students" , web_address: "https://www.stepupforstudents.org/")
Charity.create(name: "American National Red Cross" , web_address: "https://www.redcross.org/")
Charity.create(name: "World Wildlife Fund" , web_address: "https://www.worldwildlife.org/")
Charity.create(name: "Save the Children Federation", web_address: nil)
Charity.create(name: "Carter Center", web_address: nil)
Charity.create(name: "Good 360", web_address: nil)
Charity.create(name: "American Kidney Fund", web_address: nil)
Charity.create(name: "Alzheimer's Association", web_address: nil)
Charity.create(name: "Marine Toys for Tots Foundation", web_address: nil)
Charity.create(name: "Special Olympics", web_address: nil)
Charity.create(name: "Wounded Warrior Project", web_address: nil)
Charity.create(name: "Young Life", web_address: nil)

Donor.create(name: "Nike", donor_img_url: 'http://cdn.shopify.com/s/files/1/1431/4540/products/NIKE_Logo_AIR_Jordan_JumpMan_23_HUGE_Flight_Wall_Decal_Sticker_grande.jpg?v=1526782062')
Donor.create(name: "Starbucks", donor_img_url: 'http://www.artitudesdesign.com/wp-content/uploads/2017/02/starbucks_featured_image-1.jpg')
Donor.create(name: "Barnes & Noble", donor_img_url: 'https://s11284.pcdn.co/wp-content/uploads/2013/09/CompanyLogos_BarnesNoble-logo.jpg')
Donor.create(name: "Birch Coffee", donor_img_url: 'https://birchcoffee.com/v4/wp-content/uploads/2015/11/birchtree-footer.png')
Donor.create(name: "Geico", donor_img_url: 'https://s.yimg.com/ny/api/res/1.2/CCaSuRM0GfavUnBix_h8UQ--~A/YXBwaWQ9aGlnaGxhbmRlcjtzbT0xO3c9ODAw/http://media.zenfs.com/en-US/homerun/country_living_105/b752a0b416d998afe57094de5023f3e9')
Donor.create(name: "Petco", donor_img_url: 'https://ocbj.media.clients.ellingtoncms.com/img/photos/2015/08/18/Petco-Logo_t670.png?b3f6a5d7692ccc373d56e40cf708e3fa67d9af9d')
Donor.create(name: "CVS Pharmacy", donor_img_url: 'https://yt3.ggpht.com/a/AGF-l7-TTHgEVJREX_VmIAm9tOcNG9_bEUJ5hRofZg=s900-c-k-c0xffffffff-no-rj-mo')
Donor.create(name: "Hello Fresh", donor_img_url: 'http://www.graphis.com/media/uploads/cfe/entry/4add3e8b-9965-4fe5-a414-be164ff3f5ff/1_hellofresh_primary_logo_stacked.jpg')
Donor.create(name: "Bank of America", donor_img_url: 'https://media.bizj.us/view/img/11138963/new-bank-of-america-logo*750xx3000-1688-0-356.jpg')
Donor.create(name: "General Electric", donor_img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/General_Electric_logo.svg/500px-General_Electric_logo.svg.png')
Donor.create(name: "Google", donor_img_url: 'https://blog.hubspot.com/hs-fs/hubfs/image8-2.jpg?width=600&name=image8-2.jpg')
Donor.create(name: "General Mills", donor_img_url: 'https://www.partnersinfoodsolutions.com/sites/default/files/styles/logo/public/partner-logos/gm-mar20b.png?itok=rCy-Ifmz')
Donor.create(name: "Intuit", donor_img_url: 'https://www.intuit.com/content/dam/intuit/intuitcom/company/images/logo-intuit-black.png')
Donor.create(name: "Disney", donor_img_url: 'https://i.pinimg.com/originals/c7/73/ff/c773ffbeb5f8e9429399304522209fcc.jpg')
Donor.create(name: "Microsoft", donor_img_url: 'https://zdnet3.cbsistatic.com/hub/i/r/2014/08/27/0d77a99a-2da9-11e4-9e6a-00505685119a/resize/570x428/9c14ac223374e81816a3973dcbd3f661/microsofts-logo-gets-a-makeover.jpg')
Donor.create(name: "Delta", donor_img_url: 'https://www.glutenfreeadventures.net/wp-content/uploads/2018/11/logo-delta-airlines.jpg')
Donor.create(name: "Universal", donor_img_url: 'https://vignette.wikia.nocookie.net/logopedia/images/6/60/Universal_intro.jpg/revision/latest/scale-to-width-down/640?cb=20100711102047')
Donor.create(name: "Adidas", donor_img_url: 'https://thriftyzone-thriftysigns.netdna-ssl.com/wp-content/uploads/2018/05/Adidas-Logo.jpg')
Donor.create(name: "Perrier", donor_img_url: 'https://live.staticflickr.com/2889/34009251755_fc5fd3bbef_b.jpg')
Donor.create(name: "WeWork", donor_img_url: 'https://cdn.theorg.com/74693ee3-9e07-45b2-90d8-506b76cdeb42_small.jpg')
Donor.create(name: "Best Buy", donor_img_url: 'https://www.underconsideration.com/brandnew/archives/bestbuy_2018_logo_large.png')
Donor.create(name: "Apple", donor_img_url: 'https://cdn.mos.cms.futurecdn.net/MFHVMYQCeJHMGop4u8VkzJ.jpg')

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
Challenge.create(title: "Get Outside", money_pot: 30000, payout: 3, img_url: nil, description: 'Even if it’s just taking a quick 15 minute walk around your neighborhood or sitting out on your deck for a few minutes, being outside for even small amounts of time can do so much for your sense of calm and allow you to feel more centered.',
start_date: "2019-10-20", end_date: "2019-11-10", donor_id: Donor.find_by(name: 'Bank of America').id )
Challenge.create(title: "Do your side hobby of what you love", money_pot: 20000, payout: 2, img_url: nil, description: 'Creating a side business of your own that you love and are passionate about can bring so much joy into your life!',
start_date: "2019-10-26", end_date: "2019-11-10", donor_id: Donor.find_by(name: 'General Electric').id )
Challenge.create(title: "Do stretching for 10 Minutes", money_pot: 15000, payout: 3, img_url: nil, description: 'Just a short stretch in any way is sure to give you more energy and make you feel better about yourself.',
start_date: "2019-12-23", end_date: "2020-01-11", donor_id: Donor.find_by(name: 'Google').id )
Challenge.create(title: "Write down 3 things you're grateful for", money_pot: 20000, payout: 2, img_url: nil, description: 'Make a greteful day for yourself:)',
start_date: "2019-11-23", end_date: "2019-12-11", donor_id: Donor.find_by(name: 'General Mills').id )
Challenge.create(title: "Have your breakfast", money_pot: 10000, payout: 1, img_url: nil, description: 'Start with a strong day with a strong meal',
start_date: "2019-11-23", end_date: "2019-12-11", donor_id: Donor.find_by(name: 'Intuit').id )
Challenge.create(title: "Smile once a day", money_pot: 20000, payout: 2, img_url: nil, description: 'Smile can make a whole different day',
start_date: "2019-10-25", end_date: "2019-11-11", donor_id: Donor.find_by(name: 'Disney').id )
Challenge.create(title: "Write a letter to someone", money_pot: 15000, payout: 3, img_url: nil, description: 'Have a warm day with your close ones',
start_date: "2019-11-15", end_date: "2019-11-16", donor_id: Donor.find_by(name: 'Microsoft').id )
Challenge.create(title: "Make the bed each morning first thing", money_pot: 20000, payout: 2, img_url: nil, description: 'Make the bed, get ready for your refreshing day',
start_date: "2019-11-23", end_date: "2019-12-11", donor_id: Donor.find_by(name: 'Delta').id )
Challenge.create(title: "Spend time with your family", money_pot: 22000, payout: 2, img_url: nil, description: 'Get a good picture with your loving people',
start_date: "2019-11-01", end_date: "2019-11-11", donor_id: Donor.find_by(name: 'Universal').id )
Challenge.create(title: "Take a walk rain or shine", money_pot: 15000, payout: 3, img_url: nil, description: 'Whether it is raining or shining, take a walk to refresh your mind',
start_date: "2019-11-20", end_date: "2019-11-30", donor_id: Donor.find_by(name: 'Adidas').id )
Challenge.create(title: "Give yourself a daily facial", money_pot: 20000, payout: 2, img_url: nil, description: 'Treat your face, it will shine',
start_date: "2019-10-27", end_date: "2019-11-10", donor_id: Donor.find_by(name: 'Perrier').id )
Challenge.create(title: "Go on a short bike ride", money_pot: 10000, payout: 1, img_url: nil, description: 'Have some view of your neighborhood taking a bike ride',
start_date: "2019-11-20", end_date: "2019-11-30", donor_id: Donor.find_by(name: 'WeWork').id )
Challenge.create(title: "Solo Dance Parties", money_pot: 15000, payout: 3, img_url: nil, description: 'Why not? Have fun by yourself',
start_date: "2019-10-25", end_date: "2019-11-01", donor_id: Donor.find_by(name: 'Best Buy').id )
Challenge.create(title: "Go a day without makeup", money_pot: 20000, payout: 2, img_url: nil, description: 'Give some break to your fresh face',
start_date: "2019-11-25", end_date: "2019-12-01", donor_id: Donor.find_by(name: 'Apple').id )


Challengecomment.create(content: "Awesome!", challenge_id: Challenge.find_by(title: 'Drink a cup of water in the morning').id)

UserChallenge.create(title: 'My first challenge', user_id: User.find_by(username: 'Hyo').id, challenge_id: Challenge.find_by(title: 'Drink a cup of water in the morning').id , charity_id: Charity.find_by(name: 'Step Up for Students').id, datetime: Time.now, photo: nil)

Comment.create(user_challenge_id: UserChallenge.find_by(title: 'My first challenge').id, content: "this is awesome!🥳")