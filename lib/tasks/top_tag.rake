require 'json'


desc "Top Tag"
task :top_tag => [:environment]  do
  filepath =  "#{Rails.root}/db/montreal.geojson"

  file = File.read(filepath)
  hash = JSON.parse(file)
  hash['features'].each do |details|
    details['properties']['tag'] = "top_tag"
  end

  File.open(filepath, 'w') do |f|
    f.write(hash.to_json)
  end
  # puts hash['features'][0]['properties']
end
