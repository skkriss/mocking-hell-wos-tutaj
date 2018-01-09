require_relative '../lib/user'

# :id, :login, :first_name, :last_name, :pesel, :birthday

class UserManager

  def initialize(users = [])
    @users = users
  end


  def user_count
    @users.count
  end


  def get_user(id)
    @users.find { |user| user.id == id }
  end


  def add_user(user)
    @users.push(user)
  end


  def remove_user(id)
    @users.delete_if { |user| user.id == id }
  end


  def self.create_array_of_users
    [(User.new 1, 'Informatyk', 'Wiktor', 'Korol', '93101210293', Date.civil(1993, 1, 1)),
     (User.new 2, 'Pracoholik', 'Krystian', 'Wos', '95080312343', Date.civil(1995, 2, 2)),
	 (User.new 3, 'Gosc', 'Patryk', 'Paluchowski', '93072201928', Date.civil(1997, 3, 3))]
  end

end
