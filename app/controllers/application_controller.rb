class ApplicationController < ActionController::Base
  before_action :current_user
  protect_from_forgery with: :exception

	# Save current user information
	def current_user
		@current_user = User.find(session[:user_id]) if session[:user_id]
	end
end
