Rails.application.routes.draw do  resources :artforms
  devise_for :users
  get 'shori/gallery/:id' => 'static#index', as: 'gallery'
  get 'shori/venue/:id' => 'static#index', as: 'venue'
  get "/" => redirect("/shori/home")
  get "/users" => redirect("/shori/dashboard")
  get '/shori/*path' => 'static#index'
  root 'static#index'
  get '/shori/home' => 'static#index', as: 'home'
  get '/shori/dashboard' => 'static#index', as: 'dashboard'
  get 'users/user_data' => 'users#user_data'
  get 'pacts/pacts_data' => 'pacts#pacts_data'
  resources :artpieces
  resources :followings
  resources :artforms
  resources :pacts
  resources :pacts_users


  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
