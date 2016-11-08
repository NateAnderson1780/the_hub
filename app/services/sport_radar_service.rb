class SportRadarService
  def initialize
    @base_url = "http://api.sportradar.us/nba-t3/"
  end

  def team_injuries(team_code)
    response = client.get do |req|
      req.url (base_url + "league/injuries.json")
      req.params['api_key'] = ENV['sport_radar_api_key']
    end
    injuries = parse(response)
    injuries[:teams].find do |raw_team|
      raw_team[:id] == team_code
    end[:players]
  end

  def team_roster(team_code)
    response = conn.get do |req|
      req.url "teams/#{team_code}/profile.json"
      req.params['api_key'] = ENV['sport_radar_api_key']
    end
    roster = parse(response)[:players]
  end

  def team_standings(conference_code, division_code)
    response = conn.get do |req|
      req.url 'seasontd/2016/REG/standings.json'
      req.params['api_key'] = ENV['sport_radar_api_key']
    end
    standings = parse(response)
    conference = standings[:conferences].find do |raw_conference|
      raw_conference[:id] == conference_code
    end
    division = conference[:divisions].find do |raw_division|
      raw_division[:id] == division_code
    end[:teams]
  end

  def team_schedule(team_code)
    response = conn.get do |req|
      req.url 'games/2016/REG/schedule.json'
      req.params['api_key'] = ENV['sport_radar_api_key']
    end
    parse(response)[:games]
  end

  def player_statistics(player_code)
    response = conn.get do |req|
      req.url "players/#{player_code}/profile.json"
      req.params['api_key'] = ENV['sport_radar_api_key']
    end
    parse(response)[:seasons].first[:teams].first
  end
  
  def player_biography(player_code)
    response = conn.get do |req|
      req.url "players/#{player_code}/profile.json"
      req.params['api_key'] = ENV['sport_radar_api_key']
    end
    parse(response)
  end

  def player_draft_info(player_code)
    response = conn.get do |req|
      req.url "players/#{player_code}/profile.json"
      req.params['api_key'] = ENV['sport_radar_api_key']
    end
    parse(response)[:draft]
  end

  private
    attr_reader :conn

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end
