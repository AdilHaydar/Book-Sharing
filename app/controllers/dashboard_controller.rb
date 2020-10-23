class DashboardController < ApplicationController

  def index

  	if current_user
  		@books = @current_user.books
  	else
  		redirect_to :controller => 'welcome', :action => 'index'
  	end

  end

end
