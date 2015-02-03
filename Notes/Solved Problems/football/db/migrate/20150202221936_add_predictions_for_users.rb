class AddPredictionsForUsers < ActiveRecord::Migration
  def up
    User.all.each do |user|
      puts "making predictions for user #{user.email}"
      #I'm going to make a random number of predictions for each user
      rand(100).times do |n|
        # I know there are 256 games in my db, with ids 2-257
        # (bc I made a game and deleted it)
        game = Game.find(rand(256) + 2) #+2 because 
        # I'm going to base my users' predictions on the actual
        # final score of the games, plus or minus a random amount.
        # I'm also going to make sure no prediction is smaller than 0.
        home_score_guess = [ game.home_score - 5 + rand(10), 0 ].max
        away_score_guess = [ game.away_score - 5 + rand(10), 0 ].max
        # I'm going to use #build instead of #create so I can skip validation
        prediction = user.predictions.build(game_id: game.id, 
                                             home_score: home_score_guess,
                                             away_score: away_score_guess)
        prediction.save(validate: false)
      end
    end
  end

  def down
    Prediction.delete_all
  end
end
