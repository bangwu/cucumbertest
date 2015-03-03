require 'sinatra'
require 'models'
get '/' do
  %{
  <html>
    <body>
	  <form action="/withdraw" method="post">
        <label for="amount">Amount</label>
        <input type="text" id="amount" name="amount">
	    <button type="submit">Withdraw</button>
	  </form>
    </body>
  </html>
  }	
end

set :cash_slot, CashSlot.new
set :account do
	
end
post '/withdraw' do
  teller = Teller.new(settings.cash_slot)
  teller.withdraw_from(settings.account, params[:amount].to_i)
end
