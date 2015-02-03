class Team < ActiveRecord::Base
  belongs_to :city
  has_many :home_games, class_name: "Game", foreign_key: :home_team_id
  has_many :away_games, class_name: "Game", foreign_key: :away_team_id
  has_one :coach
  validates :name, uniqueness: true
  validates :conference, :division, :name, presence: true

  def self.ranked
    all.sort_by(&:wins).reverse
  end

  def self.rank_vs_spread
    all.includes(:home_games, :away_games).sort_by do |team|
      team.percent_covering_spread
    end
  end

  def division_rivals
    Team.where(conference: conference, 
               division: division).where.not(id: id)
  end

  def percent_covering_spread
    (home_games.select{|game| game.home_team_covered?}.length + 
     away_games.select{|game| game.away_team_covered?}.length) /
    (home_games.length + away_games.length).to_f
  end
  
  def to_s
    if city.name == 'Boston'
      "New England #{name}"
    else
      "#{city} #{name}"
    end
  end
end