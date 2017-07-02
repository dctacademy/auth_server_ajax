class App < ActiveRecord::Base
	before_validation :generate_token, on: :create
	validates_presence_of :name, :auth_token

	private
	def generate_token
		self.auth_token = SecureRandom.hex
	end

end
