class Post

	include Mongoid::Document
	include Mongoid::Timestamps

	#Fields
	field :title, type: String
	field :content, type: String

	#Associations
	belongs_to :blog

end
