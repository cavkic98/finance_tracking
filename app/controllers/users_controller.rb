class UsersController < ApplicationController

	def myportfolio	
		@user = current_user
		@user_stocks = current_user.stocks
	end

end
