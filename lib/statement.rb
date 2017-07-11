# it understands printing a statement to the repl
require_relative 'account.rb'

class Statement

  INITIAL_BALANCE = 0

  def build(transactions)
    balance = INITIAL_BALANCE
    statement_header
    transactions.each do |transaction|
      balance = adjust_balance(transaction, balance)
      statement_line(transaction, balance)
    end
  end

  private

  def adjust_balance(transaction, balance)
    transaction.direction == :credit ? (balance += transaction.amount) : (balance -= transaction.amount)
  end

  def statement_header
    p 'Date | Credit | Debit | Balance'
  end

  def statement_line(transaction, balance)
    p "#{transaction.time} | #{credit_or_debit_line?(transaction)} | #{balance}"
  end

  def credit_or_debit_line?(transaction)
    transaction.direction == :credit ? "#{transaction.amount} |" : "| #{transaction.amount}"
  end
end
