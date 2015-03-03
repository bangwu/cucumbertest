module KnowsMyAccount
  def my_account
  	@account ||= Account.new
  end

  def cash_slot
	@cash_slot ||= CashSlot.new
  end
end

World(KnowsMyAccount)

CAPYURE_A_NUMBER = Transform(/^\d+$/) do |number|
  number.to_i
end

Given(/^I have deposited \$(#{CAPYURE_A_NUMBER}) in my account$/) do |amount|
  @account = Account.new
  @account.deposite(amount)
  expect(@account.balance).to eql(amount)
end

When(/^I withdraw \$(#{CAPYURE_A_NUMBER})$/) do |amount|
  teller = Teller.new(cash_slot)
  teller.withdraw_from(my_account,amount)
end

Then(/^\$(#{CAPYURE_A_NUMBER}) should be dispensed$/) do |amount|
  expect(cash_slot.contents).to eql(amount)
  expect(@account.balance).to eql(80)
end
