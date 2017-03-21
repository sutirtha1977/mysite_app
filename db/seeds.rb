# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    



puts "Remove all data from tables START"
User.destroy_all
Product.destroy_all
Team.destroy_all
puts "Remove all data from tables END"

puts "Creating Admin User START"

User.create! do |u|
    u.email     = 'sutirtha@test.com'
    u.password    = 'password'
    u.admin_role = true
end


User.create! do |u|
    u.email     = 'tamojit@test.com'
    u.password    = 'password'
    u.admin_role = true
end

User.create! do |u|
    u.email     = 'tanaya@test.com'
    u.password    = 'password'
end

User.create! do |u|
    u.email     = 'rishik@test.com'
    u.password    = 'password'
end

puts "Creating Admin User END"

puts "Creating Product START"

puts "Product 1"
product = Product.create({
	name: "Astrology" , 
	description: "Vedic Astrology is Lord Shiva's gift to mankind. Once Ma Parvati asked Lord Shiva how human beings may traverse life's winding pathways with courage and confidence. Lord Shiva then narrated the science of astrology to Ma Parvati which was recorded by Rishi Parashara. According to this treatise which is known as the Parashara Hora Shastra, our lives are governed by various cosmic forces that manifest in our bodies, minds and environment causing our lives to run the way they do. These cosmic forces are the nine planets, stars and deities. Just as the gravitational pull of the moon causes the ebb and flow of tides on earth, so also, these cosmic forces act upon us and our surroundings causing situations, actions and reactions which are not under our control. Does this then mean that man has no control or free will with respect to his life? This exactly was the question posed by Ma Parvati to Lord Shiva who then explained how man may reach out to the cosmos for his benefit, guidance and upliftment. Man may with the blessings of the divine chart his own destiny. Man is certainly not a puppet and God does not play the role of the master puppeteer ever. So if you are facing difficulties in life, you must never get disheartened and give up, but should face the difficulty with courage and confidence. All of us have resources available to us, we only have to put them to good use if we want to succeed in life.  Almost all problems in our life can be solved by remedying the astrological influences in our birth chart. Weak or malefic influences can be neutralised to a large extent and strengths can be enhanced. Love affairs, marriage problems, childlessness, success in studies, career or business, financial prosperity, health and well-being - all of these and many more can be worked upon with sure success. If you follow the expert astrological advice with faith and dedication, no hurdle can be impossible to scale and success will surely come to you.   If you wish to tap into the infinite blessings of the divine through havans, japam, path, gemstones and other astrological remedies, then Contact Us to get your Astrological charts prepared and analysed. Within a short time you will definitely see the blessings begin to manifest in your life.", 
	category: "SERVICE" ,
	icon_path: "icons/icon1.svg",
	visible: true,
	position: 1 })

product.listings.create({
	name: "Children Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/childrenhoroscope.jpg",
	position: 1,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Fame And Fortune Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/consultapandit.jpg",
	position: 2,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Family And Relations Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/familyandrelationshoroscope.jpg",
	position: 3,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Full Vedic Horoscope Package",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/fullvedichoroscopepackage.jpg",
	position: 4,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Gemstone Consultation",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/gemstoneconsultation.jpg",
	position: 5,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Health Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/healthhoroscope.jpg",
	position: 6,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Litigation Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/litigationhoroscope.jpg",
	position: 7,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Love Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/lovehoroscope.jpg",
	position: 8,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Marriage Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/marriagehoroscope.jpg",
	position: 9,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Numerology",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/numerology.jpg",
	position: 10,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Palmistry",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/palmistry.jpg",
	position: 11,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Property Horoscope",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/propertyhoroscope.jpg",
	position: 12,
	curr_price: 1000.00
	})

product.listings.create({
	name: "Varshphal",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/varshphal.jpg",
	position: 14,
	curr_price: 1000.00
	})

puts "Product 2"
product = Product.create(
	:name => "Temple" , 
	:description => "Devout Hindus give an auspicious start to the day by having the darshan of God at home or temple, in the morning before beginning work. This simple practice fills us with pure and holy thoughts, gives us the wisdom to perform right actions and ensures that we stay on the right path in our lives. Our culture also stresses upon the need to visit different holy places, do darshan and perform pujas to seek the blessings of the rich plethora of Gods in our religion. For so many of us, going on pilgrimages is preferred over other forms of travelling for leisure or enjoyment. With so many wonderful pilgrimage centres all over our country, we have ample opportunity to visit different places for a complete and fulfilling religious experience. These places have their unique rituals and customs which may seem not so easy to understand properly for a visitor. Make sure you immerse yourself in the unique aspect of the pilgrimage centre you visit by contacting us for genuine pandits at any of the following temples spread across the country.", 
	:category => "SERVICE" ,
	icon_path: "icons/icon2.svg",
	:visible => true,
	position: 2)


product.listings.create({
	name: "Chowki",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/chowki.jpg",
	position: 1 ,
	curr_price: 10000.00
	})


puts "Product 3"
product = Product.create(
	:name => "Purohit" , 
	:description => "Energise your home, office, Place of business or study with powerful vedic chants, havans and pujas. Bring peace, well-being, prosperity, success and happiness into every sphere of your life through these treasures of religion. Our purohits will help you get rid of all negative vibrations and enable the free flow of positive divine energy into your life. Contact us to book a purohit and conduct the any of the following services at your convenience.", 
	:category => "SERVICE" ,
	icon_path: "icons/icon4.svg",
	:visible => true,
	position: 3)

product.listings.create({
	name: "Annaprashana Ceremony",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/annaprashana.jpg",
	position: 1 ,
	curr_price: 10000.00
	})

product.listings.create({
	name: "Sacred Thread(Upanayan) Ceremony",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/sacredthread.jpg",
	position: 2,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Grihapravesh Ceremony",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/grihapravesh.jpg",
	position: 3,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Marriage Ceremony",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/marriage.jpg",
	position: 4,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Saraswati Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/saraswatipuja.jpg",
	position: 5,
	curr_price: 10000.00
	})

product.listings.create({
	name: "Lakshmi Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/lakshmipuja.jpg",
	position: 6,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Kali Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/kalipuja.jpg",
	position: 7,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Durga Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/durgapuja.jpg",
	position: 8,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Lakshmi Narayan Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/lakshminarayanpuja.jpg",
	position: 9,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Satyanarayan Puja and Path",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/satyanarayan.jpg",
	position: 10,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Rudrashtadhyayi Path",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/rudrashtadhyayi.jpg",
	position: 11,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Bhagwad Gita Path",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/bhagwadgita.jpg",
	position: 12,
	curr_price: 10000.00
	})
product.listings.create({
	name: "DurgaSaptashati Path",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/durgasaptashati.jpg",
	position: 13,
	curr_price: 10000.00
	})
product.listings.create({
	name: "Vishnu SahasranaamStotram Path and Puja",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/vishnupath.jpg",
	position: 14,
	curr_price: 10000.00
	})


puts "Product 4"
product = Product.create(
	:name => "Vastu" , 
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:category => "SERVICE" ,
	icon_path: "icons/icon5.svg",
	:visible => true,
	position: 4)
product.listings.create({
	name: "Industrial Vastu",
	short_desc: "Industrial Vaastu is the science of designing industries or factory areas according to the principles of Vaastu Shastra. Industries with Vaastu Defects may suffer from unexplained losses and difficulties. Industrial Vaastu remedies these defects and facilitates the movement of labour, raw materials, work in progress and finished goods according to Vaastu guidelines, thereby facilitating harmony and energising properties in the industry or factory area.", 
	visible: true,
	image_loc: "listings/industrialvastu.jpg",
	position: 1 ,
	curr_price: 100000.00
	})
product.listings.create({
	name: "Vastu For Home",
	short_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit",
	long_desc: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	visible: true,
	image_loc: "listings/vastuforhome.jpg",
	position: 2,
	curr_price: 100000.00
	})

puts "Creating Product END"

puts "Creating Team START"
puts "Member 1"
Team.create(
	:first_name => "Sutirtha",
	:last_name => "Chakraborty",
	:title => "CEO",
	:email => "sutirtha@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 1,
	:avatar_loc => "team/sutirtha.jpg"
	)

puts "Member 2"
Team.create(
	:first_name => "Tamojit",
	:last_name => "Chakraborty",
	:title => "CFO",
	:email => "tamojit@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non",
	:cell_phone => 9876543210,
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 2,
	:avatar_loc => "team/tamojit.jpg"
	)

puts "Member 3"
Team.create(
	:first_name => "Rishik",
	:last_name => "Chakraborty",
	:title => "CTO",
	:email => "rishik@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 3,
	:avatar_loc => "team/rishik.jpg"
	)

puts "Member 4"
Team.create(
	:first_name => "Tanaya",
	:last_name => "Mukherjee",
	:title => "CIO",
	:email => "tanaya@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 4,
	:avatar_loc => "team/tanaya.jpg"
	)

puts "Member 5"
Team.create(
	:first_name => "Mohana",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "mohana@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 5,
	:avatar_loc => "team/mohana.jpg"
	)

puts "Member 6"
Team.create(
	:first_name => "Amrapali",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "amrapali@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 6,
	:avatar_loc => "team/amrapali.jpg"
	)

puts "Member 7"
Team.create(
	:first_name => "Ajit",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "ajit@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 7,
	:avatar_loc => "team/ajit.jpg"
	)

puts "Member 8"
Team.create(
	:first_name => "Gargi",
	:last_name => "Chakraborty",
	:title => "Astrologer",
	:email => "gargi@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 8,
	:avatar_loc => "team/gargi.jpg"
	)

puts "Member 9"
Team.create(
	:first_name => "John",
	:last_name => "Doe",
	:title => "Astrologer",
	:email => "john@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 9,
	:avatar_loc => "team/john.jpg"
	)

puts "Member 10"
Team.create(
	:first_name => "Jane",
	:last_name => "Doe",
	:title => "Astrologer",
	:email => "jane@test.com",
	:description => "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	:cell_phone => "+91 9876543210",
	:google => "https://www.google.com",
	:facebook => "https://www.facebook.com",
	:twitter => "https://www.twitter.com",
	:linkedin => "https://www.linkedin.com",
	:position => 10,
	:avatar_loc => "team/jane.jpg"
	)







