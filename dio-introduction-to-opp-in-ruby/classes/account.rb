class Account
  @@id = -1

  attr_accessor :balance
  attr_accessor :account_id
  attr_accessor :id
  attr_accessor :name

  def initialize(name:, id: 0, initial_deposit: 0)
    @account_id = id
    @name = name
    @balance = initial_deposit
  end

  def self.create(name:, initial_deposit: 0)
    @@id += 1
    Account.new(name: name, id: @@id, initial_deposit: initial_deposit)
  end

  def transfer(destination_account, amount)
    if balance - amount >= 0
      destination_account.balance += amount
      @balance -= amount
    end
  end
end
