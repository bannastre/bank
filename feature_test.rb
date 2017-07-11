require './lib/account.rb'

def run
  account = Account.new
  account.deposit(1000)
  account.deposit(2000)
  account.withdraw(500)
  account.statement
end

run
