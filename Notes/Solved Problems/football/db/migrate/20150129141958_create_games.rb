class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :date
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :home_score
      t.integer :away_score

      t.timestamps null: false
    end
  end
end
