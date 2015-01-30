class Website
  require 'nokogiri'
  require 'open-uri'
  require 'phantomjs'
  require 'watir'

  def self.nba_top_scorers
    b = Watir::Browser.new(:phantomjs)
    b.goto "http://stats.nba.com/leaders/#!?StatCategory=PTS"



    Nokogiri::HTML(open(b.html, 'User-Agent' => 'ruby')).css("tbody").each do |box|
      puts box.css('tr')


    end
  end

end
