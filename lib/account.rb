# Konto należace do użytkownika serwisu
# :id, :user, :name

class Account
  attr_reader :id, :user, :name
  attr_accessor :balance

  def initialize(id, user, name)
    @id = id
    @user = user
    @name = name
    @name = "#{@user.full_name}'s e-account" if name.nil?
    @balance = 0.0
  end

  def self.money_error(ammount)
    raise ArgumentError, 'Ammount must be more than 0' \
          unless ammount.is_a?(Numeric) && ammount >= 0.0
    true
  end

  def self.balance_error(ammount, balance)
    raise ArgumentError, 'You dont have that much money in your account' \
          if ammount > balance
    true
  end

  def deposit_money(ammount) #wplata
    @balance += ammount if Account.money_error(ammount)
  end

  def withdraw_money(ammount) #wyplata
    @balance -= ammount if Account.money_error(ammount) && \
                           Account.balance_error(ammount, @balance)
  end
end
