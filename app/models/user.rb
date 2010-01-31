class User < ActiveRecord::Base

	attr_accessor :psw_confirm
	has_many :characters

	def self.authenticate(username, psw)
		User.find_by_username_and_psw(username, psw)
	end

end
