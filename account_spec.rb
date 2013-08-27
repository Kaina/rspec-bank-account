
require "rspec"

require_relative "account"

describe Account do
  let(:account) { Account.new('1234567890') }
  describe "#initialize" do
    it "creates a Account object" do
      account.should be_an_instance_of Account
    end

    it "requires two parameters" do
      expect { Account.new }.to raise_error(ArgumentError)
    end
  end



  describe "#transactions" do

    it do
       a = Account.new('1234567890');
       a.class == Array
     end
  end

  describe "#balance" do

  end

  describe "#account_number" do

  end

  describe "deposit!" do

  end

  describe "#withdraw!" do

  end
end
