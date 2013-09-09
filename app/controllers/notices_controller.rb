class NoticesController < ApplicationController

	http_basic_authenticate_with name: "roughy", password: "admin", except: [:index, :show]

	def index
		@notices = Notice.all
	end

	def show
		@notice = Notice.find(params[:id])
	end

	def new
		@notice = Notice.new
	end

	def create
		@notice = Notice.new(params[:notice].permit(:title, :text))

		if @notice.save
			redirect_to @notice
		else
			render "new"
		end
	end

	def edit
		@notice = Notice.find(params[:id])
	end

	def update
		@notice = Notice.find(params[:id])

		if @notice.save
			redirect_to @notice
		else
			render "edit"
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to notices_path
	end
end
