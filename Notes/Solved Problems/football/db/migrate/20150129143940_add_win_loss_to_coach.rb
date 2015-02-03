class AddWinLossToCoach < ActiveRecord::Migration
  def change
    change_table :coaches do |t|
      t.integer :wins
      t.integer :losses
    end
  end
end
