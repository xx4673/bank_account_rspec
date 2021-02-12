require "./bank_account"
RSpec.describe BankAccount do
  let(:account) { BankAccount.new(10) }
  describe "deposit feature" do
    it "default amount to be 10 dollars, deposit 5 dollars in to the account and expect it to be $15 " do
      account.deposit(5)
      expect(account.balance).to be 15
    end

    it "default amount to be 10 dollars, deposit -5 dollars and expect it to be $10" do
      account.deposit(-5)
      expect(account.balance).to be 10
    end
  end

  describe "withdraw feature" do
    it "default account balance to be $10, withdraw $5 , expect balance to be $5" do
      amount =account.withdraw(5)

      expect(amount).to be 5
      expect(account.balance).to be 5
    end
    it "default account balance to be $10, withdraw $20, expect balance to be 
    $10 (unable to withdraw amount greater than original balance)" do
      amount = account.withdraw(20)

      expect(amount).to be 0
      expect(account.balance).to be 10
    end
    it "default account balance to be $10, withdraw $-5, expect balance to be $10(unable to withdraw amount equals to or less than 0)" do
      amount = account.withdraw(-5)
      
      expect(amount).to be 0
      expect(account.balance).to be 10
    end
  end  
end