class UserStocksController < ApplicationController

	def create
		stock = Stock.find_by_ticker(params[:stock_ticker])
		if stock.blank?
			stock = Stock.new_from_lookup(params[:stock_ticker])
			stock.save
		end
		@user_stock = UserStock.create(user: current_user, stock: stock)
		flash[:success] = "Stock #{@user_stock.stock.name} was successfuly added to portfolio"
		redirect_to myportfolio_path

	end


end
