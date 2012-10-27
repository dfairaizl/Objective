class Author
  
	include Mongoid::Document
  
	#Fields
	field :author_username, type: String
	field :author_password, type: String
	field :author_email, type: String

	#Validation
	
	validates_presence_of :author_username, message: "Please enter an author username"
	
	validates_presence_of :author_password, message: "Please enter a password"
	validates_length_of :author_password, maximum: 16, message: "Password cannot exceed 16 characters"
	validates_length_of :author_password, minimum: 6, message: "Password must be at least 6 characters"
	
	validates_presence_of :author_email, message: "Please enter an email address"
	
	#Associations  
	embedded_in :blog
  
end
