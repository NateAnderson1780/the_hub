require 'rails_helper'

RSpec.describe SportRadarService do
  it "can get a players statistics" do
    VCR.use_cassette("player_statistics") do
      player_code = '0e163d44-67a7-4107-9421-5333600166bb'
      stats = SportRadarService.new.player_statistics(player_code)

      expect(stats[:market]).to eq("Chicago")
      expect(stats[:total][:games_played]).to eq(7)
      expect(stats[:average][:points]).to eq(21.0)
    end
  end

  it "can get a players biography" do
    VCR.use_cassette("player_biography") do
      player_code = '0e163d44-67a7-4107-9421-5333600166bb'
      bio = SportRadarService.new.player_biography(player_code)

      expect(bio[:full_name]).to eq("Jimmy Butler")
      expect(bio[:height]).to eq(79)
      expect(bio[:experience]).to eq("5")
    end
  end

  it "can get a players draft information" do
    VCR.use_cassette("player_draft_info") do
      player_code = '0e163d44-67a7-4107-9421-5333600166bb'
      draft_info = SportRadarService.new.player_draft_info(player_code)

      expect(draft_info[:year]).to eq(2011)
      expect(draft_info[:round]).to eq("1")
      expect(draft_info[:pick]).to eq("30")
    end
  end

  it "can get a teams injuries" do
    VCR.use_cassette("team_injuries") do
      team_code = '583ec5fd-fb46-11e1-82cb-f4ce4684ea4c'
      injuries = SportRadarService.new.team_injuries(team_code)
      injury = injuries.first

      expect(injury[:full_name]).to eq("Michael Carter-Williams")
      expect(injury[:injuries].first[:status]).to eq("Out")
      expect(injury[:primary_position]).to eq("PG")
    end
  end

  it "can get a teams roster" do
    VCR.use_cassette("team_roster") do
      team_code = '583ec5fd-fb46-11e1-82cb-f4ce4684ea4c'
      players = SportRadarService.new.team_roster(team_code)
      player = players.first

      expect(player[:full_name]).to eq("Denzel Valentine")
      expect(player[:jersey_number]).to eq("45")
      expect(player[:experience]).to eq("0")
    end
  end

  it "can get a teams standings" do
    VCR.use_cassette("team_standings") do
      conference_code = '3960cfac-7361-4b30-bc25-8d393de6f62f'
      division_code = 'f3aaf23a-1ceb-46ef-8fef-9403692e801b'
      standings = SportRadarService.new.team_standings(conference_code, division_code)
      team = standings.first

      expect(team[:name]).to eq("Cavaliers")
      expect(team[:wins]).to eq(6)
      expect(team[:losses]).to eq(1)
    end
  end

  it "can get a teams schedule" do
    VCR.use_cassette("team_schedule") do
      team_code = '583ec5fd-fb46-11e1-82cb-f4ce4684ea4c'
      schedule = SportRadarService.new.team_schedule(team_code)
      game = schedule.first

      expect(game[:venue][:name]).to eq("Quicken Loans Arena")
      expect(game[:home][:name]).to eq("Cleveland Cavaliers")
      expect(game[:away][:name]).to eq("New York Knicks")
    end
  end
end
