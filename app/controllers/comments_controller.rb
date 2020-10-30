class CommentsController < ApplicationController

	def create

		if current_user

			@book = Book.find(params[:book_id])
			@comment = @book.comments.create(comment_params)
			@comment.user_id = current_user.id
			@comment.approve = false
			@comment.save
			
			#redirect_to book_path(@book)
			respond_to do |format|
				format.js
			end
		end

	end

	def show

		@comment = Comment.find(params[:id])

	end

	def edit

		@comment = Comment.find(params[:id])

	end

	def update
		
    @comment = Comment.find(params[:id])
    @comment.approve = true
    @comment.save

    redirect_to '/dashboard'

  end

	private
	def comment_params

		params.require(:comment).permit(:body, :title)

	end
end
