class Transfer
  # your code here
<<<<<<< HEAD
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
=======
  attr_accessor :sender, :receiver, :status, :amount
>>>>>>> ada2f28b9ab78e60741c0922b82c64e791f295a0
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end  
  
  def valid?
<<<<<<< HEAD
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if valid? && @sender.balance > amount && @status == "pending"
      @sender.deposit(amount * -1)
      @receiver.deposit(amount)
      @status = "complete"
    else
      @status = "rejected"
      "Transaction rejected. Please check your account balance."
=======
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction()
    if valid? && status == "pending"
        sender.deposit(amount * -1)
        receiver.deposit(amount)
        @status = "complete"
    else
      puts "Transaction rejected. Please check your account balance."
      @status = "rejected"
>>>>>>> ada2f28b9ab78e60741c0922b82c64e791f295a0
    end
  end
  
  def reverse_transfer()
<<<<<<< HEAD
    if @status == "complete"
      @sender.deposit(amount)
      @receiver.deposit(amount * -1)
=======
    if status == "complete"
      sender.deposit(amount)
      receiver.deposit(amount * -1)
>>>>>>> ada2f28b9ab78e60741c0922b82c64e791f295a0
      @status = "reversed"
    end
  end
  
end
