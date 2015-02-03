# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
#require 'sqlite3'

#database = SQLite3::Database.open "nfl.db"
=begin
CSV.foreach("#{Rails.root}/db/states.csv") do |row|
  next if row[0] == 'id'
  State.create(id: row[0], name: row[1], abbr: row[2], capital: row[3],
               biggest_city: row[4], population: row[5], area: row[6])
  #sql = "INSERT INTO states (id, name, abbr, capital, biggest_city, population, area) VALUES("
  #data = row.map do |cell|
  #  cell.to_i == 0 ? "'#{cell}'" : cell
  #end
  #puts "#{sql}#{data.join(', ')});"
  #database.execute "#{sql}#{data.join(', ')});"
end
#=end
#city_id = 1
CSV.foreach("#{Rails.root}/db/cities.csv") do |data|
  next if data[0] == '2013 rank'
  #sql = "INSERT INTO cities (id, name, population_2013, population_2010, population_change, population_density, state_id) VALUES("
  #data_with_extra_columns = row.map do |cell|
  #  cell.to_i == 0 && (cell =~ /\./).nil? || cell.include?('St.') ? "'#{cell}'" : cell
  #end
  if data[5] =~ /[^0-9\.]/
    data[5].sub!(/[^0-9\.]/, '-')
  end
  City.create(name: data[1], population_2013: data[3], population_2010: data[4],
              population_change: data[5], population_density: data[7], state_id: data[8])
  #data = [city_id, data_with_extra_columns[1], data_with_extra_columns[3],
  #        data_with_extra_columns[4], data_with_extra_columns[5], data_with_extra_columns[7],
  #        data_with_extra_columns[8]]
  #puts "#{sql}#{data.join(', ')});"
  #database.execute "#{sql}#{data.join(', ')});"
  #city_id += 1
end
#=begin
#team_id = 1
CSV.foreach("#{Rails.root}/db/nfl.csv") do |row|
  next if row[0] == 'City' || row[0].nil?
  #sql = "INSERT INTO teams (id, name, wins, losses, ties, division, conference, playoff, city_id) VALUES ("
  data = row.map do |cell|
    if cell == 'TRUE'
      true
    elsif cell == 'FALSE'
      false
    #elsif cell != '0' && (cell.to_i == 0 || cell == '49ers')
    #  "'#{cell}'" 
    else
      cell
    end
  end
  Team.create(name: data[1], wins: data[2], losses: data[3], ties: data[4],
              division: data[5], conference: data[6], playoff: data[7], city_id: data[8])
  #data[0] = team_id
  #puts "#{sql}#{data.join(', ')});"
  #database.execute "#{sql}#{data.join(', ')});"
  #team_id += 1
end
=end
# looks like I don't have the coaches yet; 
# I got a list from http://en.wikipedia.org/wiki/List_of_current_National_Football_League_head_coaches#Coaches
# and whittled that down to just team names and coach names
# I'm assuming that nobody was hired midway through the season
# because I don't know
# it would complicate things if anybody did
# I'm going to assign all wins and losses during 2014 to the coach
# listed in that table as the coach as of the end of 2014
# I saved the data in db/coaches.csv
puts "enter the coaches..."
CSV.foreach("#{Rails.root}/db/coaches.csv") do |row|
  # the 1st element in each row, row[0], looks like "Arizona Cardinals"
  # or "Green Bay Packers" - it's a string, and the team name is the last word
  team_name = row[0].split.last 
  team = Team.where(name: team_name).first
  coach_name = row[1]
  coach = team.create_coach(name: coach_name)
  # it's nice to get output from seeding, so you know it's working
  puts "#{coach.name} is the coach of the #{team.name}" 
end

# get all the games data from the api

SportsDataApi.set_key(:nfl, SPORTS_DATA_API_KEY)
schedule = SportsDataApi::Nfl.schedule(2014, :REG)

schedule.weeks.each do |week|
  week.games.each do |game|
    #now there's a game object that has home string, away string, and week
    puts "getting data for the week #{game.week} game #{game.away} at #{game.home}"
    box = SportsDataApi::Nfl.boxscore(2014, :REG, game.week, game.home,
                                      game.away)
    home_team_id = Team.where(name: box.home_team.name).pluck(:id).first
    away_team_id = Team.where(name: box.away_team.name).pluck(:id).first
    Game.create(date: box.scheduled, home_team_id: home_team_id,
                away_team_id: away_team_id, home_score: box.home_team.points,
                away_score: box.away_team.points)
    sleep(1)
  end
end
#also, I want to say that when a game is created, the coaches of the teams
#get their win/loss records updated






