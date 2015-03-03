module KnowsMyAccount
  def my_account
  	@account ||= Account.new
  end

  def cash_slot
	@cash_slot ||= CashSlot.new
  end
end

World(KnowsMyAccount)