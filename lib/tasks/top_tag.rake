require 'json'

desc "Top Tag"
task :top_tag => [:environment]  do
  filepath =  "https://cdn.rawgit.com/colbol/yumaps/2605c6d5ba903bb8da3fc9bb3b6a56386d60ddbe/montreal.geojson"

  file = File.read(filepath)
  hash = JSON.parse(file)
  @tags = Tag.all
  @votes = Vote.all
  hash['features'].each do |details|
    # find district
    district = details['properties']['FEDENAME']

    # store all the tags in array -- district_tag
    district_tag = []
    data = {}
    tag_vote = []
    @tags.each do |tags|
      district_tag.push(tags) if tags['name'] == district
    end

    # create an hash with the amount of votes for each tag (tag.votes.count)
    district_tag.each do |tag|
      data[tag.content] = tag.votes.count
    end

    # find the most voted tag and update the json according to this info
    def largest_hash_key(hash)
      hash.max_by{|k,v| v}
    end

    def top(hash)
      top = hash.sort_by { |content, votes| - votes }
      top.first(20)
    end

    #if details['properties']['tag'] != largest_hash_key(data)[0]


    #details['properties']['tag'] = largest_hash_key(data)[0]

  end

  File.open(filepath, 'w') do |f|
    f.write(hash.to_json)
  end
end





