class Blog

	include Mongoid::Document
	
	#DB Fields
	field :blog_name, type: String
	field :blog_description, type: String
	
	#Validation
	validates :blog_name, presence: true
	
	#Associations
	has_many :posts, validate: false

end
