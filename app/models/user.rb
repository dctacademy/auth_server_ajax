class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  before_validation :generate_token, on: :create 


  private 

  def generate_token
  	self.auth_token = SecureRandom.hex
  end
end
