require_relative 'transactions.rb'
require_relative 'statement.rb'

# Account understands interactions with the bank
class Account
  Transaction = Struct.new(:amount, :direction, :time)

  def initialize
    @transactions = Transactions.new
  end

  def transaction_history
    @transactions.history
  end

  def deposit(amount)
    @transactions.record(Transaction.new(amount, :credit, time))
  end

  def withdraw(amount)
    @transactions.record(Transaction.new(amount, :debit, time))
  end

  def statement
    statement = Statement.new
    statement.build(transaction_history)
  end

  private

  def time
    Time.now.strftime("%d-%m-%Y %H:%M")
  end
end
