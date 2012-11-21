class BlogController < ApplicationController

  def index
  
  	@posts = Post.all()
  	@author = Author.first()
  	@metablog = Metablog.first
  
  end

end
