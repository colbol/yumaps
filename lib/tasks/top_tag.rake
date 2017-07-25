require 'json'
require 'open-uri'


desc "Top Tag"
task :top_tag => [:environment]  do
    filepath = "https://s3.us-east-2.amazonaws.com/yumaps/uploads/montreal.geojson"

    file = open(filepath)
    hash = JSON.parse(file.first)
    @tags = Tag.all
    @votes = Vote.all

    hash['features'].each do |details|
      #find district
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

      # puts "#{details['properties']['tag']} for: #{details['properties']['FEDENAME']}"
      # puts "Largest tag: #{largest_hash_key(data)[0]}"
      # puts "------------------------------------------"


      if details['properties']['tag'] != largest_hash_key(data)[0]
        puts "have changed: #{details['properties']['tag']} for: #{largest_hash_key(data)[0]}"
        details['properties']['tag'] = largest_hash_key(data)[0]
      end


      uploader = FileUploader.new
      File.open(file, 'w+') do |f|
          f.write(hash.to_json)
          uploader.store!(f)
      end

  end
  puts "....."
  puts "Uploaded!"
end







