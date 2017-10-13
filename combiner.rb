require 'json'

json = Dir['./*json'].map { |f| JSON.parse File.read(f) }.flatten

fJson = File.open("./lh3_photos.json","w")
fJson.write(json)
fJson.close
