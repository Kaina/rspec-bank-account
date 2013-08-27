
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
    it "should only display last four numbers of account" do
      last_four = /([*]*)(\d{4})/.match(@account_number)
    end

  end

  describe "deposit!" do

  end

  describe "#withdraw!" do

  end
end
