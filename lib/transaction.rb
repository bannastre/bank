# Transaction understands the movement of amounts

class Transaction

  attr_reader :time
  
  def initialize(time = Time.now)
    @time = time
  end
end
