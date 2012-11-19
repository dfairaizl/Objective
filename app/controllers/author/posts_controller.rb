class Author::PostsController < AuthorController
  
  def index
  
  	@posts = Post.where(:slug.ne => nil)
  	
  end
  
  def new
  	
  	@post = Post.new
  	
  end
  
  def create
  
  	@post = Post.create(params[:post])
  	
  	if @post.save
  		flash[:notice] = "Post %s created successfully" % @post.title
  		redirect_to author_posts_path
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
  		redirect_to author_posts_path
  	end
  	
  end
  
end
