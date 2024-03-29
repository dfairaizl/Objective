Objective::Application.routes.draw do

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  #Sample resource route within a namespace:
  
  devise_for :author, :controllers => { :sessions => "author/sessions", :registrations => "author/registrations" }
  
  namespace :author do

	#Author root
    match '/' => 'index#index'
    
    #Author Posts page
    match '/posts' => 'posts#index'
    match '/posts/new' => 'posts#new'
    match '/posts/create' => 'posts#create'
    match '/posts/update' => 'posts#update'
    match '/posts/:post_name' => 'posts#show', :as => "posts_show"
    
    #Installer
    resources :install
    
  end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'blog#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
