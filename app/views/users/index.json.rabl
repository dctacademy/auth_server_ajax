if @user.nil?
	node(:status) {"failure"}
	node(:message) {"Invalid email / password"}
elsif !(@user.is_a? User)
	node(:status) {"failure"}
	node(:message) {"Invalid email / password"}
else
	object @user
	attributes :id, :email, :auth_token
end