namespace :admin do
	desc "Delete all posts for the blog"
	task :destroy_posts => :environment do
	  Post.each do | post |
	  	puts 'Deleting post : ' + post.title.to_s
	  	post.destroy
	  end
	end
	
	desc "destory the blog and all data"
	task :destroy_blog => :environment do
	  Blog.each do | blog |
	  	puts 'Deleting blog : ' + blog.blog_name.to_s
	  	blog.destroy
	  end
	end
end