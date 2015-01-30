
['scraper'].each do |folder|
  Dir["#{Rails.root}/lib/scraper/website.rb"].each {|file| load file}
end