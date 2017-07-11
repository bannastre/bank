# Transaction understands the movement of amounts
class Transaction
  attr_reader :time, :amount, :direction

  def initialize(amount, direction, time = Time.now)
    @time = time
    @amount = amount
    @direction = direction
  end
end
