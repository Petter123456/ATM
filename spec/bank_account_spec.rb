require './bank_account'

describe BankAccount do
  context "has a balance" do
    let(:account) do
      BankAccount.new(500, "Sarah")
    end

   it "is created with an opening balance and the name of the client" do
     expect(account).to be_a(BankAccount)
   end

    it "can report it's balance" do
      expect(account.balance).to eq(500)
    end
  end

  context "making a deposit" do
    let(:account) do
      account = BankAccount.new(500, "Sarah")
      account.deposit(500)
      account
    end

    it "balance is increased" do
      expect(account.balance).to eq(1000)
    end
  end

  context "making a withdrawal" do
      let(:account) do
        account = BankAccount.new(500, "Sarah")
        account.withdraw(200)
        account
      end

      it "balance is decreased" do
        expect(account.balance).to eq(300)
      end

      it "excessive withdraw amount" do
         expect(account.withdraw(99999999)).to eq(nil)
      end

    end







  context "transfering funds"





    it "account balance is decreased"
    it "other account balance is increased"

  context "minimum balance"
    it "raises an error if opening balance is too low"
    it "does NOT raise an error if opening balance is over minimum balance"
    it "allows the bank owner to change the minimum balance"
end
