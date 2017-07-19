# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Country.destroy_all
City.destroy_all
District.destroy_all
Tag.destroy_all
Vote.destroy_all


countries = Country.create([{ name: 'Canada'}])
countries = Country.create([{ name: 'Monaco'}])
countries = Country.create([{ name: 'Belarus'}])
city_params =
[
  {name: 'Montreal' , longitude: 45.5017, latitude: 73.5673, zoom: 7,country_id: (Country.find_by name: 'Canada').id  },
  {name: 'Toronto' , longitude: 43.6532, latitude: 79.3832, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  {name: 'Calgary' , longitude: 51.0486, latitude: 114.0708, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  {name: 'Winnipeg' , longitude: 49.8951, latitude: 97.1384, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  {name: 'Whitehorse' , longitude: 60.7212, latitude: 135.0568, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  {name: 'Monaco City' , longitude: 43.7308, latitude: 7.4226, zoom: 3,country_id: (Country.find_by name: 'Monaco').id  },
  {name: 'Minsk' , longitude: 53.9045, latitude: 127.5615, zoom: 3,country_id: (Country.find_by name: 'Belarus').id  },
  {name: 'Ottawa' , longitude: 30, latitude: 20, zoom: 1,country_id: (Country.find_by name: 'Canada').id  }
]

city_params.each do |params|
  city = City.create(params)
  district = District.create(name: 'districtA', city_id: city.id)
  tag = Tag.create!(name: 'tagname', display: true, district_id: district.id)
  Vote.create(ip: '133.234.234.1', tag_id: tag.id, countdown: 0)
end


