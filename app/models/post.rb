class Post

	include Mongoid::Document
	include Mongoid::Timestamps

	#Fields
	field :title, type: String
	field :content, type: String
	field :slug, type: String

	#Associations
	belongs_to :blog
	
	#Callbacks
	before_create :create_slug
	
	def create_slug
		self.slug = self.title.parameterize
	end

end
