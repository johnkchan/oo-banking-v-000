class BankAccount
  attr_accessor :status, :balance
  attr_reader :name
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def display_balance()
<<<<<<< HEAD
    "Your balance is $#{@balance}."
  end
  
  def valid?
    @balance > 0 && @status == "open" 
=======
    return "Your balance is $#{@balance}."
  end
  
  def valid?()
    return @status == "open" && @balance > 0
>>>>>>> ada2f28b9ab78e60741c0922b82c64e791f295a0
  end
  
  def close_account()
    @status = "closed"
  end
  
end
