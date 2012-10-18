class Admin::PostsController < AdminController
  
  def index
  
  	@posts = Post.where(:slug.ne => nil)
  	  	
  	@posts.each do | post |
  		puts "slug:" + post.slug.to_s
  	end

  end
  
  def new
  	
  	@post = Post.new
  
  	render :new
  end
  
  def create
  
  	@post = Post.create(params[:post])
#   	@post.create_slug
  	
  	if @post.save
  		flash[:notice] = "Post %s created successfully" % @post.title
  		redirect_to admin_posts_path
  	else 
  		render :action => new
  	end
  	
  end
  
  def show
  	puts "Editing %s" % params[:post_name]
  	render :new
  end
  
end
