require_relative '../to_english'
class Card
  include Comparable

  attr_reader :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{string_value.capitalize} of #{capitalized_suit}"
  end

  def string_value
    @value.respond_to?(:to_english) ? @value.to_english : @value
  end

  def <=>(other_card)
    value <=> other_card.value
  end

  def value
    case @value
    when Fixnum
      @value
    when :jack
      11
    when :queen
      12
    when :king
      13
    when :ace
      14
    end
  end

  def capitalized_suit
    suit.to_s.capitalize
  end

  def initial
    capitalized_suit.split('')[0]
  end

  def to_img
    "<img src=\"card_images/#{capitalized_suit}/#{abbr_face_value}#{initial}.svg\">"
  end

  def face_value
    if @value.is_a?(Fixnum)
      @value
    else
      @value.to_s.capitalize
    end
  end
  
  def abbr_face_value
    if @value.is_a?(Fixnum)
      @value
    else
      #if @value is a symbol, turn it to string, then capitalize, 
      #then get 1st letter
      @value.to_s.capitalize.split('')[0]
    end
  end
end