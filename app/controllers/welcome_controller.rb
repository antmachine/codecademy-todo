class WelcomeController < ApplicationController
	def home
		if user_signed_in?
			redirect_to controller: 'todo', action: 'index'
		end
	end
end
