require 'json'

desc "Top Tag"
task :top_tag => [:environment]  do
  filepath =  "#{Rails.root}/db/montreal.geojson"

  file = File.read(filepath)
  hash = JSON.parse(file)
  @tags = Tag.all
  hash['features'].each do |details|
    # find district
    district = details['properties']['FEDENAME']

    # store all the tags in array -- district_tag
    arr = []
    @tags.each do |tag|
      arr.push(tag) if tag['name'] = district
    end
    puts arr
    # create an hash with the amount of votes for each tag (tag.votes.count)
    # find the most voted tag and update the json according to this info
    # details['properties']['tag'] = "top_tag"
  end

  # File.open(filepath, 'w') do |f|
  #   f.write(hash.to_json)
  # end
end




