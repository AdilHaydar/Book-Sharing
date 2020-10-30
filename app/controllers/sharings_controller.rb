class SharingsController < ApplicationController
	def new
		@sharing = Sharing.new(params[:book_id])
		@book = Book.find(params[:id])
		
	end
	
	def create
		if current_user
			#puts params[:sharing]
			book = Book.find(params[:sharing][:book_id])
			puts book
			if book.tradeable
				@sharing = current_user.sharings.create(sharing_params)
				redirect_to '/dashboard'
			else
				redirect_to :controller => 'welcome', :action => 'index'
			end
		end
	end

	def edit
		@sharing = Sharing.find(4)
		@book = @sharing.book
		puts @book.user
	end

	private
	def sharing_params
    params.require(:sharing).permit(:book_id, :status, :user_id, :offer_book_id)
  end
end
