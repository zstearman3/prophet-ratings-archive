class TeamGame < ApplicationRecord
  belongs_to :team_season
  belongs_to :team
  belongs_to :game
  has_many :player_games
end
