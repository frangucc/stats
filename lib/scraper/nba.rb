class Nba
  require 'nokogiri'
  require 'open-uri'


  def self.fantasy_top_scorers


    #"[@status='active']"

    #page = Nokogiri::HTML(open('http://rotoguru1.com/cgi-bin/hstats.cgi?06d003000', 'User-Agent' => 'ruby'))

    #collected_text = page.css("pre").first.text.split(" ")

    #collected_text.shift(39)

    #collected_text.each_with_index do |text, index|

    #   if (index % 16 == 0) or index == 0
    #         puts text

    #   end

    #end

    #players = []

    #players.inject([]) do |result, player|

    #end
  end

  def self.top_scorers
    results = []

    Nokogiri::HTML(open('http://espn.go.com/nba/statistics/player/_/stat/scoring-per-game/sort/avgPoints/year/2015/seasontype/2', 'User-Agent' => 'ruby')).css(".tablehead").each do |box|
      players = box.css('tr')

      players.shift

      results = players.inject([]) do |result, player|
        player_name = player.css('td')[1].css('a').text

        if player_name.present?
          games_played = player.css('td')[3].text

          points_per_game = player.css('td')[5].text

          result.push({name: player_name, points_per_game: points_per_game, games_played: games_played})
        end

        result
      end
    end

    results
  end

  def self.top_rebounders
    results = nil

    Nokogiri::HTML(open('http://espn.go.com/nba/statistics/player/_/stat/rebounds', 'User-Agent' => 'ruby')).css(".tablehead").each do |box|
      players = box.css('tr')

      players.shift

      results = players.inject([]) do |result, player|
        player_name = player.css('td')[1].css('a').text

        if player_name.present?
          games_played = player.css('td')[3].text

          rebounds_per_game = player.css('td')[10].text

          result.push({name: player_name, rebounds_per_game: rebounds_per_game, games_played: games_played})
        end

        result
      end
    end

    results
  end

  def self.top_assists
    results = nil

    Nokogiri::HTML(open('http://espn.go.com/nba/statistics/player/_/stat/assists', 'User-Agent' => 'ruby')).css(".tablehead").each do |box|
      players = box.css('tr')

      players.shift

      results = players.inject([]) do |result, player|
        player_name = player.css('td')[1].css('a').text

        if player_name.present?
          games_played = player.css('td')[3].text

          assists_per_game = player.css('td')[6].text

          result.push({name: player_name, assists_per_game: assists_per_game, games_played: games_played})
        end

        result
      end
    end

    results
  end

  def self.top_steals
    results = nil

    Nokogiri::HTML(open('http://espn.go.com/nba/statistics/player/_/stat/steals', 'User-Agent' => 'ruby')).css(".tablehead").each do |box|
      players = box.css('tr')

      players.shift

      results = players.inject([]) do |result, player|
        player_name = player.css('td')[1].css('a').text

        if player_name.present?
          games_played = player.css('td')[3].text

          assists_per_game = player.css('td')[6].text

          result.push({name: player_name, assists_per_game: assists_per_game, games_played: games_played})
        end

        result
      end
    end

    results
  end

  def self.top_blocks
    results = nil

    Nokogiri::HTML(open('http://espn.go.com/nba/statistics/player/_/stat/blocks', 'User-Agent' => 'ruby')).css(".tablehead").each do |box|
      players = box.css('tr')

      players.shift

      results = players.inject([]) do |result, player|
        player_name = player.css('td')[1].css('a').text

        if player_name.present?
          games_played = player.css('td')[3].text

          blocks_per_game = player.css('td')[7].text

          result.push({name: player_name, blocks_per_game: blocks_per_game, games_played: games_played})
        end

        result
      end
    end

    results
  end

  def self.top_turnovers
    results = nil

    Nokogiri::HTML(open('http://espn.go.com/nba/statistics/player/_/stat/turnovers/sort/avgTurnovers/order/false', 'User-Agent' => 'ruby')).css(".tablehead").each do |box|
      players = box.css('tr')

      players.shift

      results = players.inject([]) do |result, player|
        player_name = player.css('td')[1].css('a').text

        if player_name.present?
          games_played = player.css('td')[3].text

          turnovers_per_game = player.css('td')[6].text

          result.push({name: player_name, turnovers_per_game: turnovers_per_game, games_played: games_played})
        end

        result
      end
    end

    results
  end

  def self.top_double_doubles
    results = nil

    Nokogiri::HTML(open('http://espn.go.com/nba/statistics/player/_/stat/double-doubles/sort/doubleDouble', 'User-Agent' => 'ruby')).css(".tablehead").each do |box|
      players = box.css('tr')

      players.shift

      results = players.inject([]) do |result, player|
        player_name = player.css('td')[1].css('a').text

        if player_name.present?
          games_played = player.css('td')[3].text

          double_double_leaders = player.css('td')[10].text

          result.push({name: player_name, double_double_leaders: double_double_leaders, games_played: games_played})
        end

        result
      end
    end

    results
  end
end
