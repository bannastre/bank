# Transactions understands all transactions on the account
class Transactions
  attr_reader :history

  def initialize
    @history = []
  end

  def record(transaction)
    @history << transaction
  end
end
