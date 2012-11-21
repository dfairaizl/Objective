class Blog

	include Mongoid::Document
	
	#Associations
	has_one :author, validate: true
	has_one :metadata, validate: true
	
	has_many :posts, validate: false
	
	attr_accessible :blog_name, :blog_description, :blog_domain, :author

end
