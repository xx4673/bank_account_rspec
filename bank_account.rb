class BankAccount
  def initialize(amount)
    @amount = amount
  end

  def deposit(amount)
    unless amount < 0
      @amount += amount
    end
  end

  def withdraw(amount)
    if @amount >= amount && amount > 0
      @amount -= amount 
      amount
    else
      0
    end
  end

  def balance
    @amount
  end
end