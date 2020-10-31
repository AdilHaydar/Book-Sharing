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
		@sharing = Sharing.find(params[:id])
		@book = @sharing.book
	end
	def deny
		sharing = Sharing.find(params[:id])
		sharing.status = false
		sharing.save
		redirect_to '/dashboard'
	end
	def approve
		sharing = Sharing.find(params[:id])
		sharing.status = true
		sharing.save
		redirect_to '/dashboard'
	end
	def update
		puts "UPDATE"
	end

	private
	def sharing_params
    params.require(:sharing).permit(:book_id, :status, :user_id, :offer_book_id)
  end
end
