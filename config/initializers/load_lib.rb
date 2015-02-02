
['scraper'].each do |folder|
  Dir["#{Rails.root}/lib/scraper/nba.rb"].each {|file| load file}
end