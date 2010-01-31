class SessionsController < ApplicationController

	skip_before_filter :login_required, :set_user_variable

	def index
	
	end
	
	def create

		begin 

			@user = User.authenticate(params[:user][:username],params[:user][:psw])

		rescue 

			flash[:warning] = "Incorrect username/password"
			redirect_to root_url
			return

		end

			session[:current_user_id] = @user.id
			redirect_to newsfeed_path

	end

	def destroy
			reset_session	    
			redirect_to root_url
	end

end
