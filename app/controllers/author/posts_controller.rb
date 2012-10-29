class Author::PostsController < AuthorController

  before_filter :authenticate_author!
  
  def after_sign_in_path_for(resource)
  	redirect_to author_path
  end
  
  def index
  
  	@posts = Post.where(:slug.ne => nil)
  	  	
  	@posts.each do | post |
  		puts "slug:" + post.slug.to_s
  	end

  end
  
  def new
  	
  	@post = Post.new
  	
  end
  
  def create
  
  	@post = Post.create(params[:post])
  	
  	if @post.save
  		flash[:notice] = "Post %s created successfully" % @post.title
  		redirect_to admin_posts_path
  	else 
  		render :action => new
  	end
  	
  end
  
  def show
  
    @post = Post.find_by(slug: params[:post_name])
  	
  end
  
  def update
  
  	post_data = params[:post]
  	@post = Post.find_by(slug: post_data[:slug])
  	
  	if @post.update_attributes(post_data)
  		flash[:notice] = "Post %s updated successfully" % @post.title
  		redirect_to admin_posts_path
  	end
  	
  end
  
end
