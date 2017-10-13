require 'pry'

# Import five.rb
require './five'

# Import the Google Cloud client library
require "google/cloud/vision"

# Your Google Cloud Platform project ID
project_id = "YOUR_PROJECT_ID"

# Instantiates a client
vision = Google::Cloud::Vision.new project: project_id

# To run multiple features on an image in a single request,
# pass the image to Vision::Project#annotate

# cannot access the lh3's as they are, sadly.
images = ["gs://fifty/me_and_kana.jpeg","gs://fifty/MIT_poster.jpg","gs://fifty/moms_food.jpg","gs://fifty/vikram_teaching.jpg","gs://fifty/yft_screenshot.jpeg"]

annotations = []
images.each do |uri|
  #create image instance
  image = vision.image uri
  annotations.push(vision.annotate image, faces: 3, labels: 7, text: true)
end

puts "Output:"
annotations.each do |image|
    image.faces.each do |face|
      puts "joy: " + "#{face.likelihood.joy?}"
      puts "anger: " + "#{face.likelihood.anger?}"
      puts "sorrow: " + "#{face.likelihood.sorrow?}"
      puts "surprise: " + "#{face.likelihood.surprise?}"
    end
    image.labels.each do |label|
      puts label.description
    end
      puts image.text
      puts "-----"
end
