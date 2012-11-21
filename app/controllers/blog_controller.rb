class BlogController < ApplicationController

  def index
  
  	@posts = Post.all()
  	@metablog = Metablog.first
  	
  	puts "DEBUG" + @metablog.to_s
  
  end

end
