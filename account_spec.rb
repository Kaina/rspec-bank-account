
require "rspec"

require_relative "account"

describe Account do
  let(:account) {@account_number = '1234567890';
                 @starting_balance = 0;
                 Account.new(@account_number, @starting_balance) }

  describe "#initialize" do
    it "creates a Account object" do
      account.should be_an_instance_of Account
    end

    it "requires two parameters" do
      expect { Account.new }.to raise_error(ArgumentError)
    end
  end

  describe "#transactions" do
    it "should be an array" do
      account.transactions.class.should eq Array
    end

    it "should have a balance of the starting balance" do
      account.transactions.reduce(:+) == @starting_balance
    end

  end

  describe "#balance" do
    it "sum of transactions should equal the account balance" do
      account.transactions.reduce(:+) == account.balance
    end
  end

  describe "#account_number" do
    it "should raise an error if accountnumber is invalid" do
      expect { Account.new('54397820gerhoiu') }.to raise_error(InvalidAccountNumberError)
    end

  end

  describe "deposit!" do
    it "should have a valid deposit value" do
      expect { account.deposit!(-100) }.to raise_error(NegativeDepositError)
    end
  end

  describe "#withdraw!" do
    it "should have a valid withdraw value" do
      expect { account.withdraw!(account.balance + 1)}.to raise_error(OverdraftError)
    end
  end
end
