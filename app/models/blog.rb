class Blog
  include MongoMapper::Document

  #keys
  key :blog_name, String
  
  #associations
  has_many :posts
  
  timestamps!

end
