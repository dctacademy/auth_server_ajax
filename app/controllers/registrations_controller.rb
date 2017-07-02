class RegistrationsController < Devise::RegistrationsController
	
	def create
		@user = User.new(user_params)
		if @user.valid?
			@user.save 
		end
	end	

	private

	def user_params
		params[:user].permit(:email, :password, :password_confirmation)
	end
end