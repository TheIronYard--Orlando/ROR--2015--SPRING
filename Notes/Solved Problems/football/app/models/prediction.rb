class Prediction < ActiveRecord::Base
  # a prediction is made by a user
  belongs_to :user
  # about a game
  belongs_to :game
  # a user can make only one prediction about a given game
  validates :game_id, uniqueness: { scope: :user_id }
  # http://guides.rubyonrails.org/active_record_validations.html#uniqueness
  
  # In general, predictions should not be possible after a game has been played
  validate :prediction_made_before_game_starts

  def got_winner?
    game.home_team_won? && home_team_win_predicted? ||
    game.away_team_won? && away_team_win_predicted?
  end

  def covered_spread?
    game.home_team_covered? && home_team_cover_predicted? ||
    game.away_team_covered? && away_team_cover_predicted?
  end

  def home_team_win_predicted?
    home_score > away_score
  end

  def away_team_win_predicted?
    away_score > home_score
  end

  def home_team_cover_predicted?
    home_score + game.point_spread > away_score
  end

  def away_team_cover_predicted?
    away_score + game.point_spread > home_score
  end

  def prediction_made_before_game_starts
    if DateTime.now > game.date
      errors.add :base, "game has already started"
    end
  end
end
