class DashboardController < ApplicationController

  def index

  	if current_user
  		@books = @current_user.books
  		#@comments = @current_user.books.select { |book| book.comments.where(approve: false ) }
  	else
  		redirect_to :controller => 'welcome', :action => 'index'
  	end

  end

end
