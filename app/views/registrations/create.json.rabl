if @user.valid?
	object @user
	attributes :email, :auth_token
	node(:status) {"success"}
else
	node(:error) {"user not created"}
	node(:messages) {"#{@user.errors.full_messages.join(", ")}"}
	node(:status) {"failure"}
end