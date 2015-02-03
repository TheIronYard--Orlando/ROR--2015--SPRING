class CreateStatesAndCitiesAndTeams < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.text :name
      t.text :abbr
      t.text :capital
      t.text :biggest_city
      t.integer :population
      t.integer :area
    end

    create_table :cities do |t|
      t.text :name
      t.integer :population_2013
      t.integer :population_2010
      t.float :population_change
      t.integer :population_density
      t.integer :state_id
    end

    create_table :teams do |t|
      t.text :name
      t.integer :wins
      t.integer :losses
      t.integer :ties
      t.text :division
      t.text :conference
      t.boolean :playoff
      t.integer :city_id
    end
  end
end
