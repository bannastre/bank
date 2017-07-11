# Transactions understands all transactions on the account

class Transactions

  def initialize
    @history = []
  end

  def history
    @history
  end

  def record(transaction)
    @history << transaction
  end

end
