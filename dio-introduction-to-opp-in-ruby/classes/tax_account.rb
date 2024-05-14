require './classes/account'

class TaxAccount < Account
  attr_accessor :tax

  def initialize(name:, id:, initial_deposit: 0, tax: 0)
    @tax = tax
    super(name: name, id: id, initial_deposit: initial_deposit)
  end

  def self.create(name:, initial_deposit: 0, tax: 0)
    @@id += 1
    TaxAccount.new(name: name, id: @@id, initial_deposit: initial_deposit, tax: tax)
  end

  def transfer(destination_account, amount)
    super(destination_account, (amount + @tax))
  end
end
