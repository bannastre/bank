require_relative 'transactions.rb'

# Account understands interactions with the bank
class Account
  INITIAL_BALANCE = 0

  Transaction = Struct.new(:amount, :direction, :time)

  def initialize
    @transactions = Transactions.new
  end

  def transaction_history
    @transactions.history
  end

  def deposit(amount)
    @transactions.record(Transaction.new(amount, :credit, Time.now))
  end

  def withdraw(amount)
    @transactions.record(Transaction.new(amount, :debit, Time.now))
  end

  def statement
    balance = INITIAL_BALANCE
    @transactions.history.each do |transaction|
      transaction.direction == :credit ? balance += transaction.amount : balance -= transaction.amount
    end
    p "Your current balance is £#{balance}"
  end
end
