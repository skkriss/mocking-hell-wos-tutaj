class Card
  attr_accessor :id, :type, :penalty, :start_date, :end_date, :active

  def initialize(id, type, penalty, start_date, end_date, active)
    @id = id
    @type = type
    @penalty = penalty
    @start_date = start_date
    @end_date = end_date
    @active = active
  end

  def to_s
    card = "#{start_date} - #{end_date}   #{type}   #{penalty}"
    card
  end
end
