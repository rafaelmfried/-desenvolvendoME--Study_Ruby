require './classes/account'
require './classes/tax_account'

conta_1 = Account.create(name: "rafael", initial_deposit: 500)
conta_2 = Account.create(name: "oscar", initial_deposit: 600)

puts "Conta de id = #{conta_1.account_id} pertencente a #{conta_1.name} com saldo: %05d" % conta_1.balance
puts "Conta de id = #{conta_2.account_id} pertencente a #{conta_2.name} com saldo: %05d" % conta_2.balance

conta_1.transfer(conta_2, 300)

puts "Conta de id = #{conta_1.account_id} pertencente a #{conta_1.name} com saldo: %05d" % conta_1.balance
puts "Conta de id = #{conta_2.account_id} pertencente a #{conta_2.name} com saldo: %05d" % conta_2.balance

conta_2.transfer(conta_1, 200)

puts "Conta de id = #{conta_1.account_id} pertencente a #{conta_1.name} com saldo: %05d" % conta_1.balance
puts "Conta de id = #{conta_2.account_id} pertencente a #{conta_2.name} com saldo: %05d" % conta_2.balance


conta_3 = TaxAccount.create(name: "vanessa", initial_deposit: 5000, tax: 10)

puts "Conta de id = #{conta_3.account_id} pertencente a #{conta_3.name} com saldo de %05d e taxa de #{conta_3.tax}" % conta_3.balance

conta_3.transfer(conta_1, 500)

puts "Conta de id = #{conta_1.account_id} pertencente a #{conta_1.name} com saldo: %05d" % conta_1.balance
puts "Conta de id = #{conta_3.account_id} pertencente a #{conta_3.name} com saldo de %05d e taxa de #{conta_3.tax}" % conta_3.balance

conta_2.transfer(conta_3, 800)

puts "Conta de id = #{conta_2.account_id} pertencente a #{conta_2.name} com saldo: %05d" % conta_2.balance
puts "Conta de id = #{conta_3.account_id} pertencente a #{conta_3.name} com saldo de %05d e taxa de #{conta_3.tax}" % conta_3.balance

conta_2.transfer(conta_3, 700)

puts "Conta de id = #{conta_2.account_id} pertencente a #{conta_2.name} com saldo: %05d" % conta_2.balance
puts "Conta de id = #{conta_3.account_id} pertencente a #{conta_3.name} com saldo de %05d e taxa de #{conta_3.tax}" % conta_3.balance
