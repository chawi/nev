class HoltRulesController < ApplicationController

	skip_before_filter :login_required, :set_user_variable

	def index
		#@rules 
	end

end
