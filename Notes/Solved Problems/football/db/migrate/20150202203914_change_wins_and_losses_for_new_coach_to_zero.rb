class ChangeWinsAndLossesForNewCoachToZero < ActiveRecord::Migration
  def change
    # I set the default values to 0 because otherwise the default value is nil
    # and when I try to increment the values, nil + 1 blows up
    change_column_default :coaches, :wins, 0
    change_column_default :coaches, :losses, 0
  end
end
