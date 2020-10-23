class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end
end
#https://stackoverflow.com/questions/7086583/creating-a-users-show-page-using-devise
