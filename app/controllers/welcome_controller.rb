class WelcomeController < ApplicationController

  def index
  	@books_all = Book.all
  	@books = @books_all.reject { |item| item.user == current_user }
  end
  
end
