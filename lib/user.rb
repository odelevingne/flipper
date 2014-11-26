require 'bcrypt'

class User

		include DataMapper::Resource
		attr_reader :password
  	attr_accessor :password_confirmation
  	
 		validates_confirmation_of :password
 		validates_uniqueness_of :email
  	validates_uniqueness_of :nickname

		property :id, 						Serial
		property :name,						String, :unique => false, :message => "This name is already taken"
		property :email, 					String, :unique => false, :message => "This email is already taken"
		property :password_digest, 	Text

	  def password=(password)
	    @password = password
	    self.password_digest = BCrypt::Password.create(password)
	  end

end