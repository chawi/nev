class UsersController < ApplicationController

	skip_before_filter :login_required, :only => [ :new, :create ]

	def index
		
	end

	def new

	end

	def create

	end

	def show
		@user = User.find(params[:id])

	end

end
