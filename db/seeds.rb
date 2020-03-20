require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Garden.destroy_all
User.destroy_all
Booking.destroy_all

# CREATING USERS

user1 = User.create(email:"elena@gmail.com", password: "elenaelena",first_name: "Elena",last_name: "Vigo")

user2 = User.create(email:"joyce@gmail.com", password: "joycejoyce", first_name: "Joyce", last_name: "Cakmak")

user3 = User.create(email:"laura@gmail.com", password: "lauralaura", first_name: "Joyce", last_name: "Helmert")

user4 = User.create(email:"michael@gmail.com", password: "michaelmichael", first_name: "Michael", last_name: "Wlaschitz")

# CREATING GARDENS WITH PICS

garden1 =Garden.create(title:"Amazing garden with relaxing swimming pool and barbecue", description:"Come and meet your friends in our peaceful and chill swimming pool with a barbecue available for grilling anything!", location:"Hutchinson St, Auburn NSW 2144, Australia", price:"40$", capacity:"10", barbecue:"true", pool:"true", green_area:"true", user_id: user1.id)

file1 = URI.open("https://www.zawadzkilandscaping.com/wp-content/uploads/2014/09/Pool-in-Garden-Design.jpg")
garden1.photos.attach(io: file1, filename: 'img1.jpg', content_type: 'image/jpg')


garden2 = Garden.create(title:"Garden outside Sydney to relax", description:"This huge garden with green areas and a swimming pool is perfect to spend an afternoon with your family and friends, enjoy the sun and the views", location:"128 Lennox St, Newtown NSW 2042, Australia", price:"50$", capacity:"8", barbecue:"false", pool:"true", green_area:"true", user_id: user2.id)

file2 = URI.open("https://thumbnails.trvl-media.com/1TcA3xfmZOvFrWHFoh1SzVyqq00=/773x530/smart/filters:quality(60)/images.trvl-media.com/hotels/18000000/17270000/17265000/17264911/87411aaf_z.jpg")
garden2.photos.attach(io: file2, filename: 'img2.jpg', content_type: 'image/jpg')


garden3 = Garden.create(title:"Luxury garden with views and swimming pool", description:"Come and relax at this perfect-designed and luxury garden, with a big green area.", location:"Belmore Ln, Newtown NSW 2042, Australia", price:"90$", capacity:"15", barbecue:"false", pool:"true", green_area:"true", user_id: user1.id)

file3 = URI.open("https://img.pixers.pics/pho_wat(s3:700/FO/12/00/36/04/700_FO12003604_11469f75911d0b5f4b56732266ba6271.jpg,700,517,cms:2018/10/5bd1b6b8d04b8_220x50-watermark.png,over,480,467,jpg)/papiers-peints-beautiful-garden.jpg.jpg")
garden3.photos.attach(io: file3, filename: 'img3.jpg', content_type: 'image/jpg')


garden4 = Garden.create(title:"Barbecue sofas and small swimming pool", description:"Garden with a barbecue, space for 5 people and a small swimming pool", location:"London St, Enmore NSW 2042, Australia", price:"20$", capacity:"5", barbecue:"true", pool:"true", green_area:"false", user_id: user2.id)

file4 = URI.open("https://images-na.ssl-images-amazon.com/images/I/91XbLmYpxtL._AC_SX679_.jpg")
garden4.photos.attach(io: file4, filename: 'img4.jpg', content_type: 'image/jpg')


garden5 = Garden.create(title:"Cool and modern garden in the center of Sidney", description:"Come and relax with your friends in our small but cozy garden in the center of Sidney", location:"London St, Enmore NSW 2042, Australia", price:"20$", capacity:"5", barbecue:"false", pool:"false", green_area:"false", user_id: user3.id)

file5 = URI.open("https://www.athomewithdaneen.com/uploads/2/4/3/1/24317380/stunning-backyard-deck-with-hammock-garden-and-trees_orig.jpg")
garden5.photos.attach(io: file5, filename: 'img5.jpg', content_type: 'image/jpg')


garden6 = Garden.create(title:"Japanese garden with barbecue ", description:"Fantastic garden, with flowers, water inspired by Japanese culture. You can enjoy the grill to have a full experience.", location:"31 Alfred St, Sydney NSW 2000, Australia" , price:"60$", capacity:"8", barbecue:"true", pool:"false", green_area:"true", user_id: user4.id)

file6 = URI.open("https://5.imimg.com/data5/PU/DO/MY-6429052/garden-swimming-pool-rs-5-lakh-to-150000-500x500.jpg")
garden6.photos.attach(io: file6, filename: 'img6.jpg', content_type: 'image/jpg')


garden7 = Garden.create(title:"Luxurious garden with huge swimming pool ", description:"Come and enjoy our huge garden. Here you can enjoy the swiming pool, take cool pictures and have a good time.", location:"46/532-540 George St, Sydney NSW 2000, Australia", price:"50$", capacity:"30", barbecue:"false", pool:"true", green_area:"true", user_id: user1.id)

file7 = URI.open("https://i.pinimg.com/originals/4a/92/00/4a9200e062249103ed138b928d74d4e7.jpg")
garden7.photos.attach(io: file7, filename: 'img7.jpg', content_type: 'image/jpg')


garden8 = Garden.create(title:"Spacious garden with a huge grill ", description:"With this weather you can come and chill with your friend and have a nice lunch ", location:"469 Kent St, Sydney NSW 2000, Australia", price:"40$", capacity:"15", barbecue:"true", pool:"false", green_area:"true", user_id: user2.id)

file8 = URI.open("https://i.ytimg.com/vi/U5-wLn0kNlg/maxresdefault.jpg")
garden8.photos.attach(io: file8, filename: 'img8.jpg', content_type: 'image/jpg')


garden9 = Garden.create(title:"Garden with grill and swiming pool well located ", description:" Close to the center, you can come and enjoy the grill and the nice garden", location:"242 Pitt St, Sydney NSW 2000, Australia", price:"40$", capacity:"20", barbecue:"true", pool:"true", green_area:"true", user_id: user3.id)

file9 = URI.open("https://www.clear-water-revival.com/wp-content/uploads/2015/03/Natural-pool-with-dive-board-e1498123029105.jpg")
garden9.photos.attach(io: file9, filename: 'img9.jpg', content_type: 'image/jpg')


garden10 = Garden.create(title:"Garden with swiming pool ", description:"Beautiful garden with swiming pool", location:"1 William St, Sydney NSW 2010, Australia", price:"30$", capacity:"10", barbecue:"false", pool:"true", green_area:"true", user_id: user4.id)

file10 = URI.open("https://www.graduatelandscapes.co.uk/bmFiles/size3/Surrey-garden-designer-.swimming-pool-decking-area-jpg.jpg")
garden10.photos.attach(io: file10, filename: 'img10.jpg', content_type: 'image/jpg')


booking1 = Booking.create(user: user2, garden: Garden.first, start_time: 14, end_time: 20, date: Date.today)
booking1 = Booking.create(user: user3, garden: Garden.first, start_time: 14, end_time: 20, date: Date.today)
booking1 = Booking.create(user: user3, garden: Garden.first, start_time: 14, end_time: 20, date: Date.today)
booking1 = Booking.create(user: user4, garden: Garden.first, start_time: 14, end_time: 20, date: Date.today)
booking1 = Booking.create(user: user4, garden: Garden.first, start_time: 14, end_time: 20, date: Date.today)
