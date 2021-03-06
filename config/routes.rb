Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'site#index'

  # Site related stuff
  # Actual HTML
  get 'site/index'
  get 'employees' => 'site#employees'
  get 'customers' => 'site#customers'
  get 'scheduler' => 'site#schedule'

  # Api related
  get 'role/' => 'role#index'
  get 'role/:id' => 'role#show'
  post 'role/create' => 'role#create'
  post 'role/:id/update' => 'role#update'
  get 'role/:id/delete' => 'role#delete'

  get 'employee/' => 'employee#index'
  get 'employee/:id' => 'employee#show'
  post 'employee/create' => 'employee#create'
  post 'employee/:id/update' => 'employee#update'
  get 'employee/:id/delete' => 'employee#delete'

  #appointment
  get 'appointment/' => 'appointment#index'
  get 'appointment/:id' => 'appointment#show'
  post 'appointment/create' => 'appointment#create'
  post 'appointment/:id/update' => 'appointment#update'
  get 'appointment/:id/delete' => 'appointment#delete'

  #schedule
  get 'schedule/' => 'schedule#index'
  get 'schedule/:id' => 'schedule#show'
  post 'schedule/create' => 'schedule#create'
  post 'schedule/:id/update' => 'schedule#update'
  get 'schedule/:id/delete' => 'schedule#delete'

  #customer api stuff
  get 'customer/' => "customer#index"
  get 'customer/:id' => "customer#show"
  post 'customer/create' => "customer#create"
  post 'customer/:id/update' => "customer#update"
  get 'customer/:id/delete' => "customer#delete"

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
