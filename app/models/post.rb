class Post
  include MongoMapper::Document
  
  key :title, String
  key :status, Integer
  key :body, String
  
  belongs_to :blog
  
  timestamps!

end
