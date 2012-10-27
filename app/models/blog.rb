class Blog

	include Mongoid::Document
	
	#DB Fields
	
	field :blog_name, type: String
	field :blog_description, type: String
	field :blog_domain, type: String
	
	#Validation
	
	validates_presence_of :blog_name, message: "Please enter a blog name"
	
	validates_length_of :blog_description, maximum: 255, message: "Tagline cannot exceed 256 characters"
	
	validates_presence_of :blog_domain, message: "Please enter your blog's domain name"
	
	#Associations
	
	embeds_one :author, validate: true
	
	has_many :posts, validate: false

end
