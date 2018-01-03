class History
  attr_accessor :id, :account, :card

  def initialize(id, account, card)
    @id = id
    @account = account
    @card = card
  end

  def to_s
    history = "#{account.email} - card # #{card.id}"
    history
  end
end
