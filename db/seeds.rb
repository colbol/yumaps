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
["Saint-Laurent - Cartierville", 1],
["Saint-LÈonard - Saint-Michel", 2],
["HonorÈ-Mercier", 3],
["Bourassa", 4],
["La Pointe-de-l'Œle", 5],
["Hochelaga", 6],
["Papineau", 7],
["Rosemont - La Petite-Patrie", 8],
["Laurier - Sainte-Marie", 9],
["Outremont", 10],
["Westmount - Ville-Marie", 11],
["Mount Royal", 12],
["Notre-Dame-de-Gr‚ce - Lachine", 13],
["Jeanne-Le Ber", 14],
["LaSalle - …mard", 15],
["Pierrefonds - Dollard", 16],
["Lac-Saint-Louis", 17]
]

#city_params.each do |params|
puts "Creating data.."
city = City.create(city_params)

arr.each do |name|
  district = District.create(name: name[0], city_id: city.first.id)
  40.times do
    tag = Tag.create!(content: Faker::Hipster.words(1)[0], district_id: district.id, name: district.name)
    rand(1..30).times do
      Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag.id)
    end
  end
end
puts "Seed finished, data created!"
