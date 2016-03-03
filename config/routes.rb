Rails.application.routes.draw do
  resources :users
  get '/pages/about/' => 'pages#about', as: :about
  get '/pages/contact/' => 'pages#contact', as: :contact

  # get "/posts" => "posts#index", as: :posts
  # post "/posts" => "posts#create"

  # get "/post/:id" => "posts#show", as: :post
  # patch "/post/:id" => "posts#update", as: :update_post
  # delete "/post/:id" => "posts#destroy", as: :destroy

  # get "/posts/new" => "posts#new", as: :new_post
  # get "/post/:id/edit" => "posts#edit", as: :edit_post

  root "posts#index"

  resources :posts do
    resources :comments
  end  
  


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  root 'application#hello'

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
