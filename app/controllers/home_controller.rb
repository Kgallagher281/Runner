class HomeController < ApplicationController

	# Newsfeed of posts from friends
	def index
		redirect_to posts_path
	end

	def handle_search
		@projects = Project.search(params[:search])
	end

	# Post method to handle login, go to posts#index
	def handle_login
		user = User.find_by(username: params[:user][:username])
		if user && user.password == params[:user][:password]
		  session[:user_id]= user.id
		  redirect_to posts_path
		else
		  redirect_to :root
		end
	end

	# Handle logout, go to login page
	def handle_logout
		session[:user_id] = nil
		redirect_to :root
	end

end
