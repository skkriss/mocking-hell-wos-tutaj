require_relative '../lib/account'


class AccountManager
  def initialize(accounts = [])
    @accounts = accounts
  end

  def account_count
    @accounts.count
  end

  def get_account(id)
    @accounts.find { |account| account.id == id }
  end

  def add_account(account)
    @accounts.push(account)
  end

  def remove_account(id)
    @accounts.delete_if { |account| account.id == id }
  end

  def self.create_array_of_accounts
    [(account.new 1, nil, 'Konto'),
     (account.new 2, nil, 'Account'),
     (account.new 3, nil, 'Konto_bank')]
  end
end
