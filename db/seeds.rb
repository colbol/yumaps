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
city = City.create([{name: 'Montreal' , longitude: 45.5017, latitude: 73.5673, zoom: 7,country_id: (Country.find_by name: 'Canada').id}])
# [{name: 'Montreal' , longitude: 45.5017, latitude: 73.5673, zoom: 7,country_id: (Country.find_by name: 'Canada').id  },
#   # {name: 'Toronto' , longitude: 43.6532, latitude: 79.3832, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
#   # {name: 'Calgary' , longitude: 51.0486, latitude: 114.0708, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
#   # {name: 'Winnipeg' , longitude: 49.8951, latitude: 97.1384, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
#   # {name: 'Whitehorse' , longitude: 60.7212, latitude: 135.0568, zoom: 3,country_id: (Country.find_by name: 'Canada').id  },
#   # {name: 'Monaco City' , longitude: 43.7308, latitude: 7.4226, zoom: 3,country_id: (Country.find_by name: 'Monaco').id  },
#   # {name: 'Minsk' , longitude: 53.9045, latitude: 127.5615, zoom: 3,country_id: (Country.find_by name: 'Belarus').id  },
#   # {name: 'Ottawa' , longitude: 30, latitude: 20, zoom: 1,country_id: (Country.find_by name: 'Canada').id  }
# ]
   #=> []
   arr = [

    ["Ahuntsic", 0, "Ahuntsic is a district in the northern part of Montreal, Quebec, Canada. Originally an independent village, Ahuntsic was annexed by Montreal in 1910. It is now part of the borough of Ahuntsic-Cartierville.
      It is home to Collège Ahuntsic and Complexe sportif Claude-Robillard."],

      ["Saint-Laurent", 1, "Saint-Laurent is one of Quebec's (and Canada's) most ethnically mixed areas, with some 166 ethnicities reported to live there in relative harmony.
        Mother tongue figures from the 2011 census of Canada are: French (29.7 per cent), English (15.6 per cent), non-official languages (54.7 per cent; largest linguistic groups are Arabic, Chinese, Greek and Spanish)
        In 2011 the immigrant population was 45.4 percent, according to the National Household Survey by Statistics Canada. It is one of the boroughs of Montreal with the highest concentration of Arab Canadians."],

        ["Saint-Léonard", 2, "The borough has one of the highest concentrations of Italian-Canadians in the city, along with Rivière-des-Prairies (RDP). As such, it has surpassed Montreal's rapidly gentrifying Little Italy as the centre for Italian culture in the city, with numerous cultural institutions and commercial enterprises serving the city's second-most populous cultural community. By necessity, many services are available in Italian, English and French (the Leonardo da Vinci Centre, for instance, offers cultural activities and events in the three languages)"],

        ["Rivière-des-Prairies", 3, "Rivière-des-Prairies was a municipality that was annexed by Montreal, Canada in 1963. On January 1, 2002 it became part of the borough of Rivière-des-Prairies–Pointe-aux-Trembles–Montréal-Est. On January 1, 2006 Montreal East demerged, and the borough became Rivière-des-Prairies–Pointe-aux-Trembles. The borough is known for its high concentration of Italians in most of the neighborhoods, and Haitians in the others. On July 9, 2006, after Italy won the 2006 FIFA World Cup, Maurice Duplessis Boulevard was closed to traffic due to the great number of fans celebrating in the street."],

        ["Montréal-Nord", 4, "Montreal North is a borough of the city of Montreal, Quebec, Canada. It consists entirely of the former city of Montréal-Nord on Island of Montreal in southwestern Quebec. It was amalgamated into the City of Montreal on January 1, 2002.
          Montreal North has the reputation of being one of Montreal's most dangerous boroughs, along with Hochelaga-Maisonneuve. The area contains a sizable community living below the poverty line, though it also has a middle-class and upper-middle-class residents."],

          ["Montréal-Est", 5, "Montreal East, is an on-island suburb in southwestern Quebec, Canada on the island of Montreal, formerly part of the borough of Rivière-des-Prairies–Pointe-aux-Trembles–Montréal-Est. Montreal-Est has consistently been home to many large oil refineries since 1915."],

          ["Hochelaga", 6, "The borough is bisected by Autoroute 25 and contains the Montreal entrance to the Louis Hippolyte Lafontaine Tunnel. It is served by the eastern end of the green line of the Montreal metro; the Honoré-Beaugrand and Radisson stations are connected to important bus termini.
            Attractions in the area include the Olympic Stadium, Saputo Stadium and Montreal Biodome, the Montreal Botanical Garden, the Château Dufresne, Collège de Maisonneuve, the Marché Maisonneuve, the Théâtre Denise-Pelletier, the Hôpital Louis-H.-La Fontaine, and the Place Versailles shopping centre."],

            ["Villeray", 7, "It is served by the Orange and Blue lines of the Montreal Metro. It is traversed and partly delimited by Autoroute 40 (Metropolitan Aut.) and Autoroute 19 (Papineau Ave.)
              Attractions in the area include the old Park Avenue train station (now containing Parc Metro station and near the Parc commuter train station), Jarry Park, and TOHU, La Cité des arts du cirque (including the Cirque du Soleil and the École nationale du cirque). The former Miron and Francon quarries are also located here."],

              ["Rosemont", 8, "The borough includes the neighbourhoods of the Petite Patrie, comprising several ethnic neighbourhoods such as Little Italy; Rosemont; and Nouveau Rosemont.
                Important features of the borough include the Jean-Talon Market, the Montreal Heart Institute, the Hôpital Santa Cabrini, the Hôpital Maisonneuve-Rosemont, the Olympic Village, Maisonneuve Park (including the Insectarium and Montreal Botanical Garden), Saint Sophie Ukrainian Orthodox Cathedral and the Church of the Madonna della Difesa."],

                ["Plateau Mont-Royal", 9, "Important features of the borough include the Hôtel-Dieu de Montréal, Lafontaine Park, and Jeanne Mance Park.
                  The borough is largely composed of the well-known Plateau neighbourhood, famous for its bohemian reputation and characteristic architecture. The neighbourhoods of Mile End, Côte Saint-Louis, and Milton-Parc (including the McGill Ghetto) are also located in the borough.
                  Montreal's Little Portugal neighbourhood is situated in the western portion of the borough."],

                  ["Outremont", 10, "Outremont is a residential borough of the city of Montreal, Quebec, Canada. It consists entirely of the former city on the Island of Montreal in southwestern Quebec. The neighbourhood is inhabited largely by Francophones, and is home to a Hasidic Jewish community."],

                  ["Vieux-Montréal", 11, "The historical Old Port offers Montrealers and visitors alike access to a wide variety of activities, including the Montréal Science Centre, with an IMAX Theatre, and the Montreal Clock Tower. It offers riverfront access for walking, cycling, roller-blading, quadricycle, pedalo and Segway rentals. It is also located at the eastern end of the Lachine Canal, which has itself been extensively refurbished as a popular destination for cycling, roller-blading and pleasure boating. Cultural events include the Festival Montréal en lumière, Igloofest and the Matsuri Japon festival."],

                  ["Westmount", 12, "Traditionally, the community of Westmount has been a wealthy and predominantly anglophone enclave, having been at one point the richest community in Canada. It now competes with the Vancouver neighborhoods of Shaughnessy, and Kerrisdale, and the Toronto neighborhoods of Lawrence Park, Forest Hill, Rosedale, and The Bridle Path, for the title."],

                  ["Dorval - Lachine", 13, "The borough is located in the southwest portion of the island of Montreal, at the inlet of the Lachine Canal, between the borough of LaSalle, and the city of Dorval. It was a separate city until municipal mergers on January 1, 2002 and did not demerge on January 1, 2006"],

                  ["Sud-ouest", 14, "Le Sud-Ouest is an amalgam of several neighbourhoods with highly distinct histories and identities, mainly with working-class and industrial origins, grouped around the Lachine Canal. These include Saint-Henri, Little Burgundy, and Griffintown to the north of the canal, and Ville-Émard, Côte-Saint-Paul, and Pointe-Saint-Charles to the south."],

                  ["LaSalle", 15, "LaSalle is known for its many public schools, most noticeably l'École secondaire Cavelier-de-LaSalle, known as one of the top talent producing schools in the field of dance, song, and the home of two Montreal Alouettes cheerleaders. The other common public school in LaSalle is LaSalle Community Comprehensive High School, opened many years ago, home to many cultures."],

                  ["Pierrefonds - Dollard", 16, "Dollard-des-Ormeaux often referred to as D.D.O. or simply (Dollard) is a predominantly English-speaking on-island suburb of Montreal in southwestern Quebec, Canada. The town was named after French martyr Adam Dollard des Ormeaux."],

                  ["West Island", 17, "The region is home to the Montréal–Pierre Elliott Trudeau International Airport, John Abbott College, Cégep Gérald-Godin, the Macdonald Campus of McGill University, the Fairview Pointe-Claire and Galeries des Sources malls, as well as Montreal's largest park, the Cap-Saint-Jacques Nature Park. "],

                  ["Laval", 18, "Laval is a Canadian city in southwestern Quebec, north of Montreal. It forms its own administrative region of Quebec. It is the largest suburb of Montreal, the third largest municipality in the province of Quebec, and the thirteenth largest city in Canada with a population of 422,993 in 2016."],

                  ["Brossard", 19, "Brossard is a municipality in the Montérégie region of Quebec, Canada and is part of the Greater Montreal area. According to the 2011 census, Brossard's population was 79,273. Prior to 2006, Brossard was formerly a borough of the municipality of Longueuil."],

                  ["Saint-Lambert", 20, "Saint-Lambert is divided into two main sections: the original city of Saint-Lambert and the Préville neighbourhood. The original city of Saint-Lambert (as it existed prior to 1969) is located from the Country Club of Montreal golf course to the border of Le Vieux-Longueuil borough. It includes the city's downtown, known as The Village. On the other side of the Country Club of Montreal is the former city Préville, which merged with Saint-Lambert in 1969. It extends to the borders of the city of Brossard and the Longueuil borough of Greenfield Park."],

                  ["Longueuil", 21, "Longueuil is a residential, commercial and industrial city. It incorporates some urban features, but is essentially a suburb. Longueuil can be classified as a commuter town as a large portion of its residents commute to work in Montreal. Most buildings are single-family homes constructed in the post-war period. The city consists of three boroughs: Le Vieux-Longueuil, Saint-Hubert and Greenfield Park."],

                  ["Saint-Bruno - Saint-Hubert", 22, "The city is well known to Montrealers and its neighbouring population for Mont Saint-Bruno, location to both Mont-Saint-Bruno National Park and Ski Mont Saint-Bruno, a ski facility and school."],

                  ["Île Bizard", 23, "It is the childhood home of NHL hockey player Vincent Lecavalier, who attended John Rennie High School, a school well known for its athletics program. It is also the childhood home of Simple Plan singer Pierre Bouvier."],

                  ["Laval Ouest", 24, "Laval Ouest is the home to the oldest synagogue in the city of laval. The Beth Abraham located in a bungalow that seats about 100, was opened around 1940 in what was then known as Laval West."],

                  ["Laval Est", 25, "Laval is geographically separated from the mainland to the north by the Rivière des Mille Îles, and from the Island of Montreal to the south by the Rivière des Prairies. Laval occupies all of Île Jésus as well as the Îles Laval."],

                  ["Laval Nord", 26, "Laval constitutes region 13 of the 17 administrative regions of Quebec as well as a territory equivalent to a regional county municipality (TE) and census division (CD) with geographical code 65. It also constitutes the judicial district of Laval."],

                  ["Île pérrot", 27, "Île Perrot holds the only working windmill in Quebec, dating from the time Île-Perrot was a seigneury in the French colony of New France. The windmill and associated miller's house were designated a National Historic Site of Canada in 1969, and a Historic Monument under provincial heritage legislation in 1977. In the windmill's honour, what now constitutes the commercial artery of the island was named boulevard Don-Quichotte."],

                  ["Repentigny", 28, "Repentigny is an off-island suburb of Montreal, Quebec, Canada, located north of Montreal on the lower end of the L'Assomption River and on the Saint Lawrence River. Repentigny and Charlemagne were the first towns off the eastern tip of the island of Montreal. Repentigny is part of the Lanaudiere region."],

                  ["Chateauguay", 29, "Châteauguay is an off-island suburb of Montreal, in southwestern Quebec, located both on the Chateauguay River and Lac St-Louis, which is a section of the St. Lawrence River. The population of the city of Châteauguay at the 2011 Census was 45,904, and the population centre was 70,812"]
                ]

# tag_content.new(30)
#city_params.each do |params|
puts "Creating data.."

arr = arr.to_a

# ---------------------------------
arr.each do |name|
  district = District.create(name: name[0], city_id: city.first.id, description: name[2])
  p "#{district.name} #{district.description}"
  40.times do
    tag = Tag.create(content: Faker::Hipster.words(1)[0], district_id: district.id, name: district.name, district_index: name[1])
    rand(1..12).times do
      Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag.id)
    end
  end
end
#  ----------------------------------

district_westmount = District.find_by(name: "Westmount")
tag_westmount = Tag.create(content: "rich", district_id: district_westmount.id, name: district_westmount.name, district_index: arr[12][1])
28.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_westmount.id)
end
puts "Seed westmount finished, data created!"

district_west_island = District.find_by(name: "West Island")
tag_west_island = Tag.create(content: "anglo", district_id: district_west_island.id, name: district_west_island.name, district_index: arr[17][1])
26.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_west_island.id)
end
puts "Seed West Island finished, data created!"

district_brossard = District.find_by(name: "Brossard")
tag_brossard = Tag.create(content: "chinese", district_id: district_brossard.id, name: district_brossard.name, district_index: arr[19][1])
28.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_brossard.id)
end
puts "Seed Brossard finished, data created!"

district_laval_est = District.find_by(name: "Laval Est")
tag_laval_est = Tag.create(content: "pay toll", district_id: district_laval_est.id, name: district_laval_est.name, district_index: arr[25][1])
21.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_laval_est.id)
end
puts "Seed Laval_est finished, data created!"

district_laval_nord = District.find_by(name: "Laval Nord")
tag_laval_nord = Tag.create(content: "north", district_id: district_laval_nord.id, name: district_laval_nord.name, district_index: arr[26][1])
17.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_laval_nord.id)
end
puts "Seed Laval_nord finished, data created!"

district_laval = District.find_by(name: "Laval")
tag_laval = Tag.create(content: "carrefour laval", district_id: district_laval.id, name: district_laval.name, district_index: arr[18][1])
17.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_laval.id)
end
puts "Seed laval finished, data created!"

district_laval_ouest = District.find_by(name: "Laval Ouest")
tag_laval_ouest = Tag.create(content: "household", district_id: district_laval_ouest.id, name: district_laval_ouest.name, district_index: arr[24][1])
19.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_laval_ouest.id)
end
puts "Seed laval_ouest finished, data created!"

district_ile_bizard = District.find_by(name: "Île Bizard")
tag_ile_bizard = Tag.create(content: "golf", district_id: district_ile_bizard.id, name: district_ile_bizard.name, district_index: arr[23][1])
22.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_ile_bizard.id)
end
puts "Seed Île Bizard finished, data created!"

district_pierrefonds = District.find_by(name: "Pierrefonds - Dollard")
tag_pierrefonds = Tag.create(content: "fairview", district_id: district_pierrefonds, name: district_pierrefonds.name, district_index: arr[16][1])
22.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_pierrefonds.id)
end
puts "Seed Pierrefonds finished, data created!"

district_dorval = District.find_by(name: "Dorval - Lachine")
tag_dorval = Tag.create(content: "airport", district_id: district_dorval, name: district_dorval.name, district_index: arr[13][1])
25.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_dorval.id)
end
puts "Seed dorval finished, data created!"

district_saint_laurent = District.find_by(name: "Saint-Laurent")
tag_saint_laurent = Tag.create(content: "suburban", district_id: district_saint_laurent, name: district_saint_laurent.name, district_index: arr[1][1])
28.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_saint_laurent.id)
end
puts "Seed saint_laurent finished, data created!"

district_vieux_montreal = District.find_by(name: "Vieux-Montréal")
tag_vieux_montreal = Tag.create(content: "history", district_id: district_vieux_montreal, name: district_vieux_montreal.name, district_index: arr[11][1])
22.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_vieux_montreal.id)
end
puts "Seed Vieux-Montréal finished, data created!"

district_lasalle = District.find_by(name: "LaSalle")
tag_lasalle = Tag.create(content: "quiet", district_id: district_lasalle, name: district_lasalle.name, district_index: arr[15][1])
23.times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_lasalle.id)
end
puts "Seed lasalle finished, data created!"

district_sud_ouest = District.find_by(name: "Sud-ouest")
tag_sud_ouest = Tag.create(content: "unknown", district_id: district_sud_ouest, name: district_sud_ouest.name, district_index: arr[14][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_sud_ouest.id)
end
puts "Seed Sud-ouest finished, data create"

district_outremont = District.find_by(name: "Outremont")
tag_outremont = Tag.create(content: "jewish", district_id: district_outremont, name: district_outremont.name, district_index: arr[10][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_outremont.id)
end
puts "Seed outremont  finished, data created!"

district_villeray = District.find_by(name: "Villeray")
tag_villeray = Tag.create(content: "tennis", district_id: district_villeray, name: district_villeray.name, district_index: arr[7][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_villeray.id)
end
puts "Seed Villeray finished, data created!"

district_ahuntsic = District.find_by(name: "Ahuntsic")
tag_ahuntsic = Tag.create(content: "cremazie", district_id: district_ahuntsic, name: district_ahuntsic.name, district_index: arr[0][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_ahuntsic.id)
end
puts "Seed Ahuntsic finished, data created!"

district_plateau_mont_royal = District.find_by(name: "Plateau Mont-Royal")
tag_plateau_mont_royal = Tag.create(content: "français", district_id: district_plateau_mont_royal, name: district_plateau_mont_royal.name, district_index: arr[9][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_plateau_mont_royal.id)
end
puts "Seed Plateau Mont-Royal finished, data created!"

district_rosemont = District.find_by(name: "Rosemont")
tag_rosemont = Tag.create(content: "latin", district_id: district_rosemont, name: district_rosemont.name, district_index: arr[8][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_rosemont.id)
end
puts "Seed Rosemont finished, data created!"

district_hochelaga = District.find_by(name: "Hochelaga")
tag_hochelaga = Tag.create(content: "olympic", district_id: district_hochelaga, name: district_hochelaga.name, district_index: arr[6][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_hochelaga.id)
end
puts "Seed Hochelaga finished, data created!"

district_saint_leonard = District.find_by(name: "Saint-Léonard")
tag_saint_leonard = Tag.create(content: "italy", district_id: district_saint_leonard, name: district_saint_leonard.name, district_index: arr[2][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_saint_leonard.id)
end
puts "Seed Saint-Léonard finished, data created!"

district_montreal_nord = District.find_by(name: "Montréal-Nord")
tag_montreal_nord = Tag.create(content: "danger", district_id: district_montreal_nord, name: district_montreal_nord.name, district_index: arr[4][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_montreal_nord.id)
end
puts "Seed Montréal-Nord finished, data created!"

district_riviere_des_prairies = District.find_by(name: "Rivière-des-Prairies")
tag_riviere_des_prairies = Tag.create(content: "galerie d'anjou", district_id: district_riviere_des_prairies, name: district_riviere_des_prairies.name, district_index: arr[3][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_riviere_des_prairies.id)
end
puts "Seed Rivière-des-Prairies finished, data created!"

district_montreal_est = District.find_by(name: "Montréal-Est")
tag_montreal_est = Tag.create(content: "families", district_id: district_montreal_est, name: district_montreal_est.name, district_index: arr[5][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_montreal_est.id)
end
puts "Seed Montréal-Est finished, data created!"

district_repentigny = District.find_by(name: "Repentigny")
tag_repentigny = Tag.create(content: "far", district_id: district_repentigny, name: district_repentigny.name, district_index: arr[28][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_repentigny.id)
end
puts "Seed Repentigny finished, data created!"

district_longueuil = District.find_by(name: "Longueuil")
tag_longueuil = Tag.create(content: "bus stop", district_id: district_longueuil, name: district_longueuil.name, district_index: arr[21][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_longueuil.id)
end
puts "Seed Longueuil finished, data created!"

district_saint_lambert = District.find_by(name: "Saint-Lambert")
tag_saint_lambert = Tag.create(content: "bridge", district_id: district_saint_lambert, name: district_saint_lambert.name, district_index: arr[20][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_saint_lambert.id)
end
puts "Seed Saint-Lambert finished, data created!"

district_saint_bruno = District.find_by(name: "Saint-Bruno - Saint-Hubert")
tag_saint_bruno = Tag.create(content: "ski", district_id: district_saint_bruno, name: district_saint_bruno.name, district_index: arr[22][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_saint_bruno.id)
end
puts "Seed Saint-Bruno - Saint-Hubert finished, data created!"

district_chateauguay = District.find_by(name: "Chateauguay")
tag_chateauguay = Tag.create(content: "deep", district_id: district_chateauguay, name: district_chateauguay.name, district_index: arr[29][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_chateauguay.id)
end
puts "Seed Chateauguay finished, data created!"

district_ile_perrot = District.find_by(name: "Île pérrot")
tag_ile_perrot = Tag.create(content: "exotic", district_id: district_ile_perrot, name: district_ile_perrot.name, district_index: arr[27][1])
rand(13..40).times do
  Vote.create(ip: Faker::Internet.ip_v4_address, tag_id: tag_ile_perrot.id)
end
puts "Seed Île pérrot finished, data created!"


# -------

puts "Seed finished, data created!"
