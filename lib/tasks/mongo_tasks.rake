namespace :admin do
	desc "Pick a random user as the winner"
	task :destroy_posts => :environment do
	  Post.each do | post |
	  	puts 'Deleting post : ' + post.title.to_s
	  	post.destroy
	  end
	end
end