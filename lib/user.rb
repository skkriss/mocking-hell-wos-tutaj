require 'date'

# Klasa użytkownika
class User
  attr_reader :id, :login, :first_name, :last_name, :pesel, :birthday

  def initialize(id, login, first_name, last_name, pesel, birthday)
    @id = id
    @login = login
    @first_name = first_name
    @last_name = last_name
    raise ArgumentError, 'Something wrong with pesel' unless User.pesel_is_valid(pesel)
    @pesel = pesel
    @birthday = birthday
  end

  
  def self.pesel_is_valid(pesel)
    return false if pesel.to_s.length != 11
    true
  end
end
