class StocksController < ApplicationController

	def search 
		@stock = Stock.new_from_lookup(params[:stock])
		render 'users/myportfolio'

	end

end