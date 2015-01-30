['scraper'].each do |folder|
  Dir["#{Rails.root}/lib/#{folder}/*.rb"].each {|file| load file}
end