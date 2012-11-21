class Blog

	include Mongoid::Document
	
	#Associations
	has_one :author, validate: true
	has_one :metablog, validate: true
	
	has_many :posts, validate: false
	
	#Accessors
	attr_accessible :metablog, :author

end
