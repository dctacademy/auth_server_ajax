class UsersController < ApplicationController
  def index
  	@user = User.find_by(email: params[:email])
  	unless @user.nil?
  		if @user.valid_password? params[:password]
  			return @user
  		else
  			return @user = {}
  		end
  	end
  end

  def list
  	@users = User.all
  end

end
