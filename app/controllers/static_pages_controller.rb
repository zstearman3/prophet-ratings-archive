class StaticPagesController < ApplicationController
  def home
    if logged_in?
      redirect_to dashboard_path
    end
  end

  def about
  end

  def contact
  end
  
  def plan
  end
  
  def dashboard
    # Attepmt to order by a foreign table is not successful
    # @team_seasons = TeamSeason.includes(:team).order("team.ap_rank desc")
    @team_seasons = TeamSeason.order(wins: :desc)
  end
end
