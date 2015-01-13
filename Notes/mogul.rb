class Mogul

  attr_reader :name, :net_worth

  def initialize(name, net_worth)
    @name = name
    @net_worth = net_worth
  end

  def laughs_at?(other_mogul)
    if @net_worth > other_mogul.net_worth
      true
    else
      false
    end
  end
end