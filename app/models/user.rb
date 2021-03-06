class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	validates :name, presence: true
	EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: {maximum: 255}, 
	                  format: {with: EMAIL_REGEX},
	                  uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password, length: {minimum: 6}
end
