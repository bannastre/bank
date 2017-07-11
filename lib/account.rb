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
    @transactions.record(Transaction.new(amount, :credit, Time.now.strftime("%d-%m-%Y %H:%M")))
  end

  def withdraw(amount)
    @transactions.record(Transaction.new(amount, :debit, Time.now.strftime("%d-%m-%Y %H:%M")))
  end

  def statement
    balance = INITIAL_BALANCE
    p 'Date || Credit || Debit || Balance'
    @transactions.history.each do |transaction|
      if transaction.direction == :credit
        balance += transaction.amount
        p "#{transaction.time} | #{transaction.amount} | | #{balance}"
      else
        balance -= transaction.amount
        p "#{transaction.time} | | #{transaction.amount} | #{balance}"
      end
    end
    p "Your current balance is £#{balance}"
  end
end
