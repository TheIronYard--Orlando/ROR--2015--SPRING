class City < ActiveRecord::Base
  belongs_to :state
  has_many :teams

  def self.densest(n)
    order('population_density DESC').limit(n)
  end

  def in_state_cities
    state.cities
  end

  def to_s
    name
  end
end