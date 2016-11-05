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
             "Brooklyn Nets",
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
    Team.find_by(name: "Charlotte Hornets").update_attributes(team_code: '583ec97e-fb46-11e1-82cb-f4ce4684ea4c'
                                                              division_code: '54dc7348-c1d2-40d8-88b3-c4c0138e085d'
                                                              conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Atlanta Hawks").update_attributes(team_code: '583ecb8f-fb46-11e1-82cb-f4ce4684ea4c'
                                                          division_code: '54dc7348-c1d2-40d8-88b3-c4c0138e085d'
                                                          conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Orlando Magic").update_attributes(team_code: '583ed157-fb46-11e1-82cb-f4ce4684ea4c'
                                                          division_code: '54dc7348-c1d2-40d8-88b3-c4c0138e085d'
                                                          conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Miami Heat").update_attributes(team_code: '583ecea6-fb46-11e1-82cb-f4ce4684ea4c'
                                                       division_code: '54dc7348-c1d2-40d8-88b3-c4c0138e085d'
                                                       conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Washington Wizards").update_attributes(team_code: '583ec8d4-fb46-11e1-82cb-f4ce4684ea4c'
                                                               division_code: '54dc7348-c1d2-40d8-88b3-c4c0138e085d'
                                                               conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Cleveland Cavaliers").update_attributes(team_code: '583ec773-fb46-11e1-82cb-f4ce4684ea4c'
                                                                division_code: 'f3aaf23a-1ceb-46ef-8fef-9403692e801b'
                                                                conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Milwaukee Bucks").update_attributes(team_code: '583ecefd-fb46-11e1-82cb-f4ce4684ea4c'
                                                            division_code: 'f3aaf23a-1ceb-46ef-8fef-9403692e801b'
                                                            conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Detroit Pistons").update_attributes(team_code: '583ec928-fb46-11e1-82cb-f4ce4684ea4c'
                                                            division_code: 'f3aaf23a-1ceb-46ef-8fef-9403692e801b'
                                                            conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Chicago Bulls").update_attributes(team_code: '583ec5fd-fb46-11e1-82cb-f4ce4684ea4c'
                                                            division_code: 'f3aaf23a-1ceb-46ef-8fef-9403692e801b'
                                                            conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Indiana Pacers").update_attributes(team_code: '583ec7cd-fb46-11e1-82cb-f4ce4684ea4c'
                                                            division_code: 'f3aaf23a-1ceb-46ef-8fef-9403692e801b'
                                                            conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Toronto Raptors").update_attributes(team_code: '583ecda6-fb46-11e1-82cb-f4ce4684ea4c'
                                                            division_code: '582d6502-9a93-4a8d-8785-69374d732875'
                                                            conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Boston Celtics").update_attributes(team_code: '583eccfa-fb46-11e1-82cb-f4ce4684ea4c'
                                                            division_code: '582d6502-9a93-4a8d-8785-69374d732875'
                                                            conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "New York Knicks").update_attributes(team_code: '583ec70e-fb46-11e1-82cb-f4ce4684ea4c'
                                                            division_code: '582d6502-9a93-4a8d-8785-69374d732875'
                                                            conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Brooklyn Nets").update_attributes(team_code: '583ec9d6-fb46-11e1-82cb-f4ce4684ea4c'
                                                          division_code: '582d6502-9a93-4a8d-8785-69374d732875'
                                                          conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "Philadelphia 76ers").update_attributes(team_code: '583ec87d-fb46-11e1-82cb-f4ce4684ea4c'
                                                               division_code: '582d6502-9a93-4a8d-8785-69374d732875'
                                                               conference_code: '3960cfac-7361-4b30-bc25-8d393de6f62f')
    Team.find_by(name: "LA Clippers").update_attributes(team_code: '583ecdfb-fb46-11e1-82cb-f4ce4684ea4c'
                                                        division_code: 'f074cb3e-90cf-42e1-8067-cdbcd99ec230'
                                                        conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Golden State Warriors").update_attributes(team_code: '583ec825-fb46-11e1-82cb-f4ce4684ea4c'
                                                                  division_code: 'f074cb3e-90cf-42e1-8067-cdbcd99ec230'
                                                                  conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "LA Lakers").update_attributes(team_code: '583ecae2-fb46-11e1-82cb-f4ce4684ea4c'
                                                      division_code: 'f074cb3e-90cf-42e1-8067-cdbcd99ec230'
                                                      conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Phoenix Suns").update_attributes(team_code: '583ecfa8-fb46-11e1-82cb-f4ce4684ea4c'
                                                         division_code: 'f074cb3e-90cf-42e1-8067-cdbcd99ec230'
                                                         conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Sacramento Kings").update_attributes(team_code: '583ed0ac-fb46-11e1-82cb-f4ce4684ea4c'
                                                             division_code: 'f074cb3e-90cf-42e1-8067-cdbcd99ec230'
                                                             conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "San Antonio Spurs").update_attributes(team_code: '583ecd4f-fb46-11e1-82cb-f4ce4684ea4c'
                                                             division_code: '1d29f94c-9587-494b-a232-feb20a40eb4c'
                                                             conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Houston Rockets").update_attributes(team_code: '583ecb3a-fb46-11e1-82cb-f4ce4684ea4c'
                                                             division_code: '1d29f94c-9587-494b-a232-feb20a40eb4c'
                                                             conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Memphis Grizzlies").update_attributes(team_code: '583eca88-fb46-11e1-82cb-f4ce4684ea4c'
                                                             division_code: '1d29f94c-9587-494b-a232-feb20a40eb4c'
                                                             conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Dallas Mavericks").update_attributes(team_code: '583ecf50-fb46-11e1-82cb-f4ce4684ea4c'
                                                             division_code: '1d29f94c-9587-494b-a232-feb20a40eb4c'
                                                             conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "New Orleans Pelicans").update_attributes(team_code: '583ecc9a-fb46-11e1-82cb-f4ce4684ea4c'
                                                                 division_code: '1d29f94c-9587-494b-a232-feb20a40eb4c'
                                                                 conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Oklahoma City Thunder").update_attributes(team_code: '583ecfff-fb46-11e1-82cb-f4ce4684ea4c'
                                                                  division_code: '12bf14ba-eb16-4c6f-8275-e801b6947c1e'
                                                                  conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Portland Trailblazers").update_attributes(team_code: '583ed056-fb46-11e1-82cb-f4ce4684ea4c'
                                                                  division_code: '12bf14ba-eb16-4c6f-8275-e801b6947c1e'
                                                                  conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Utah Jazz").update_attributes(team_code: '583ece50-fb46-11e1-82cb-f4ce4684ea4c'
                                                      division_code: '12bf14ba-eb16-4c6f-8275-e801b6947c1e'
                                                      conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Denver Nuggets").update_attributes(team_code: '583ed102-fb46-11e1-82cb-f4ce4684ea4c'
                                                           division_code: '12bf14ba-eb16-4c6f-8275-e801b6947c1e'
                                                           conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')
    Team.find_by(name: "Minnesota Timberwolves").update_attributes(team_code: '583eca2f-fb46-11e1-82cb-f4ce4684ea4c'
                                                                   division_code: '12bf14ba-eb16-4c6f-8275-e801b6947c1e'
                                                                   conference_code: '7fe7e212-de01-4f8f-a31d-b9f0a95731e3')

  end
end
