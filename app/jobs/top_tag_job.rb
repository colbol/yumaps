# class TopTagJob < ApplicationJob
#   queue_as :default

#   def perform(*args)
#     # Do something later
#   end
# end


require 'json'

filepath =  "#{Rails.root}/db/montreal.geojson"

file = File.read(filepath)
hash = JSON.parse(file)
