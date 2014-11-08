My365::Application.routes.draw do

  root 'views#index'

  get 'views/index' => 'views#index', as: :view

  get 'events/' => 'events#index', as: :events

  get 'events/new' => 'events#new', as: :new_event

  get 'events/:id' => 'events#show', as: :event  

  post 'events/' => 'events#create'
  
  get 'events/:id/edit' => 'events#edit', as: :edit_event

  patch 'events/:id' => 'events#update'

  delete 'events/:id' => 'events#destroy'

  

  get 'userprofiles/' => 'userprofiles#index', as: :userprofiles

  get 'userprofiles/new' => 'userprofiles#new', as: :new_userprofile

  get 'userprofiles/:id' => 'userprofiles#show', as: :userprofile
  
  post 'userprofiles/' => 'userprofiles#create'

  get 'userprofiles/:id/edit' => 'userprofiles#edit', as: :edit_userprofile

  patch 'userprofiles/:id' => 'userprofiles#update'

  delete 'userprofiles/:id' => 'userprofiles#destroy'






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
