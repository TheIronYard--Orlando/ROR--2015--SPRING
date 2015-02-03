class Game < ActiveRecord::Base
  
  belongs_to :home_team, class_name: "Team"
  belongs_to :away_team, class_name: "Team"
  after_create :update_coach_win_loss

  def final_score
    if home_score
      "#{home_score}-#{away_score}"
    else
      nil
    end
  end 

  def update_coach_win_loss
    # this should make the coach of the winning team have one more win
    # and the coach of the losing team have one more loss
    winning_coach.update_attribute :wins, winning_coach.wins + 1
    losing_coach.update_attribute :losses, losing_coach.losses + 1
  end

  def winning_coach
    winning_team.coach
  end

  def losing_coach
    # there's a home team, an away team, and a winning team
    # if the home team is the winning team, away_team.coach
    # if the home team is not the winning team, home_team.coach
    if home_team == winning_team
      away_team.coach
    else
      home_team.coach
    end
  end

  def winning_team
    # what does it mean to be a winning team?
    # all the game knows about is the home team and away team
    if home_score > away_score
      home_team
    else
      away_team
    end
  end

  def home_team_won?
    winning_team == home_team
  end

  def away_team_won?
    winning_team == away_team
  end

  def home_team_covered?
    home_score + point_spread > away_score
  end

  def away_team_covered?
    away_score + point_spread > home_score
  end
end
