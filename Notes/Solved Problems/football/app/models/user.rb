class User < ActiveRecord::Base
  has_many :predictions #a user can make multiple predictions

  def self.ranked_pickers
    all.includes(predictions: { game: [ :home_team, :away_team ]})
    .sort_by(&:pick_percentage).reverse # reverse orders highest to lowest
  end

  def self.rank_vs_spread
    all.includes(predictions: { game: [ :home_team, :away_team ]})
    .sort_by(&:pick_percent_vs_spread).reverse
  end

  def pick_percentage
    predictions.select{|prediction| prediction.got_winner?}.length / denominator
  end

  def pick_percent_vs_spread
    predictions.select{|prediction| prediction.covered_spread?}.length / denominator
  end

  def denominator
    # prevent division by 0
    denominator = predictions.empty?? 1.0 : predictions.length.to_f
  end
end
