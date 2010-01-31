# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

	#where to put this?
	@time = Time.now.to_s(:default)

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

	before_filter :login_required
	before_filter :set_user_variable

	def login_required

		if session[:current_user_id]
			true
		else
			flash[:warning] = "Please, login."
			redirect_to root_url
		end

	end

	def set_user_variable
		if session[:current_user_id]		
			@logged_user_id = session[:current_user_id]
			@logged_user_name = User.find(@logged_user_id)
		else #nil global vars
			@logged_user_id = nil
			@logged_user_name = nil
		end
	end
	
end
