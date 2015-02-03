class AddPointSpreadToGames < ActiveRecord::Migration
  require 'csv'
  #http://guides.rubyonrails.org/active_record_migrations.html#migrations-and-seed-data
  def up
    add_column :games, :point_spread, :float
    # using Spencer's point spread file
    CSV.foreach("#{Rails.root}/db/nfl2014_spreads.csv") do |row|
      next if row[0] == 'week'
      game = Game.where(home_team_id: row[1], 
                        away_team_id: row[3]).includes(:home_team, :away_team).first
      puts "spread for #{game.away_team.name} at #{game.home_team.name}: #{row[5]}"
      game.update_attribute :point_spread, row[5]
    end
  end

  def down
    remove_column :games, :point_spread
  end
end
