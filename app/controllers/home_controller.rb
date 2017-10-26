class HomeController < ApplicationController

	def index

	end

  # Post method to handle login
  def handle_login
    user = User.find_by(username: params[:user][:username])
    if user && user.password == params[:user][:password]
      session[:user_id]= user.id
      redirect_to posts_path
    else
      redirect_to :root
    end
  end
end
