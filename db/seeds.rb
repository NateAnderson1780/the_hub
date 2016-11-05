# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

class Seed
  def self.start
    Team.delete_all
    generate_teams
  end

  def self.generate_teams
    teams = ["Atlanta Hawks",
             "Boston Celtics",
             "Charlotte Hornets",
             "Chicago Bulls",
             "Cleveland Cavaliers",
             "Dallas Mavericks",
             "Denver Nuggets",
             "Detroit Pistons",
             "Golden State Warriors",
             "Houston Rockets",
             "Indiana Pacers",
             "LA Clippers",
             "LA Lakers",
             "Memphis Grizzlies",
             "Miami Heat",
             "Milwaukee Bucks",
             "Minnesota Timberwolves",
             "New Jersey Nets",
             "New Orleans Pelicans",
             "New York Knicks",
             "Oklahoma City Thunder",
             "Orlando Magic",
             "Philadelphia 76ers",
             "Phoenix Suns",
             "Portland Trailblazers",
             "Sacramento Kings",
             "San Antonio Spurs",
             "Toronto Raptors",
             "Utah Jazz",
             "Washington Wizards"]
    teams.each do |team|
      Team.create(name: team)
    end
    puts "Created Teams"
    assign_codes_to_cities
  end

  def self.assign_codes_to_cities
    City.find_by(name: "Colorado Springs").update_attribute(:image_url, 'http://i.imgur.com/YGkazHV.jpg')
  end
end
