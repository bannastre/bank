# Account understands interactions with the bank
class Account
  INITIAL_BALANCE = 0

  def initialize
    @transactions = Transactions.new
  end

  def transaction_history
    @transactions.history
  end

  def deposit(amount)
    @transactions.record(Transaction.new(amount, :credit))
  end
end
