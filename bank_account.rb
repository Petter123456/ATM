# bank_account.rb
class BankAccount
  attr_reader :balance
  def initialize(opening_balance, client_name)
      @balance = opening_balance
      # @client = client_name
  end

  def deposit(dep_amount)
    #deposit method should accept and amount and then add it to the balance
    @balance += dep_amount
  end

  def withdraw(with_amount)
    if with_amount > @balance
      begin
        raise StandardError.new "insuficient founds"
      rescue
        return nil
      end
    end
    @balance -= with_amount
  end


end
