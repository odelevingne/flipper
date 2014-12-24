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

		has n, :flips

	  def password=(password)
	    @password = password
	    self.password_digest = BCrypt::Password.create(password)
	  end

		def self.authenticate(email, password)
			user = first(:email => email)
			if user && BCrypt::Password.new(user.password_digest) == password
	    	user
	  	else
	    	nil
	  	end
		end

end