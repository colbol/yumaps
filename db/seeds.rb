# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

Country.destroy_all
City.destroy_all
District.destroy_all
Tag.destroy_all
Vote.destroy_all


countries = Country.create([{ name: 'Canada'}])
# countries = Country.create([{ name: 'Monaco'}])
# countries = Country.create([{ name: 'Belarus'}])
city_params =
[
  {name: 'Montreal' , longitude: 45.5017, latitude: 73.5673, zoom: 7,country_id: (Country.find_by name: 'Canada').id  },
  # {name: 'Toronto' , longitude: 43.6532, latitude: 79.3832, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  # {name: 'Calgary' , longitude: 51.0486, latitude: 114.0708, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  # {name: 'Winnipeg' , longitude: 49.8951, latitude: 97.1384, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  # {name: 'Whitehorse' , longitude: 60.7212, latitude: 135.0568, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  # {name: 'Monaco City' , longitude: 43.7308, latitude: 7.4226, zoom: 3,country_id: (Country.find_by name: 'Monaco').id  },
  # {name: 'Minsk' , longitude: 53.9045, latitude: 127.5615, zoom: 3,country_id: (Country.find_by name: 'Belarus').id  },
  # {name: 'Ottawa' , longitude: 30, latitude: 20, zoom: 1,country_id: (Country.find_by name: 'Canada').id  }
]

arr = [

["Ahuntsic", 0],
["Saint-Laurent", 1],
["Saint-Léonard", 2],
["Rivière-des-Prairies", 3],
["Montréal-Nord", 4],
["Montréal-Est", 5],
["Hochelaga", 6],
["Villeray", 7],
["Rosemont", 8],
["Plateau Mont-Royal", 9],
["Outremont", 10],
["Vieux-Montréal", 11],
["Westmount", 12],
["Dorval - Lachine", 13],
["Sud-ouest", 14],
["LaSalle", 15],
["Pierrefonds - Dollard", 16],
["West Island", 17],
["Laval", 18],
["Brossard", 19],
["Saint-Lambert", 20],
["Longueuil", 21],
["Saint-Bruno - Saint-Hubert", 22],
["Île Bizard", 23],
["Laval Ouest", 24],
["Laval Est", 25],
["Laval Nord", 26],
["Île pérrot", 27],
["Repentigny", 28],
["Chateauguay", 29]
]

#city_params.each do |params|
puts "Creating data.."
city = City.create(city_params)

arr.each do |name|
  district = District.create(name: name[0], city_id: city.first.id)
  40.times do
    tag = Tag.create(content: Faker::Hipster.words(1)[0], district_id: district.id, name: district.name, district_index: name[1])
    rand(1..30).times do
      Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag.id)
    end
  end
end
puts "Seed finished, data created!"
