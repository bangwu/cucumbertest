Given(/^I have credit \$(#{CAPYURE_A_NUMBER}) in my account$/) do |amount|
  @account = Account.new
  @account.credit(amount)
  expect(@account.balance).to eql(amount)
end

When(/^I withdraw \$(#{CAPYURE_A_NUMBER})$/) do |amount|
  teller.withdraw_from(my_account,amount)
end

Then(/^\$(#{CAPYURE_A_NUMBER}) should be dispensed$/) do |amount|
  expect(cash_slot.contents).to eql(amount)
end

Then(/^the balance of my account should be \$(#{CAPYURE_A_NUMBER})$/) do |amount|
  expect(@account.balance).to eql(amount)
end
