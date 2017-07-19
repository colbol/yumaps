# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


countries = Country.create([{ name: 'Canada'}])
city_params =
[
  {name: 'Montreal' , longitude: 40, latitude: 10, zoom: 7,country_id: (Country.find_by name: 'Canada').id  },
  {name: 'Toronto' , longitude: 80, latitude: 100, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
  {name: 'Ottawa' , longitude: 30, latitude: 20, zoom: 1,country_id: (Country.find_by name: 'Canada').id  }
]

city_params.each do |params|
  City.create(params)
end


votes = Vote.create([{ip: '133.234.234.1', count: 0, tag_id: 1}])

