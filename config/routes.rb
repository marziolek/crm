Crm::Application.routes.draw do

  #get "bugs/index"
  #get "bugs/new"
  #get "bugs/create"
  #get "bugs/delete"
  #get "bugs/show"
  #get "user_sessions/new"
  #get "user_sessions/create"
  #get "user_sessions/destroy"
  #get "user_sessions/new"
  #get "user_sessions/create"
  #get "user_sessions/destroy"
  #get "users/new"
  #get "users/create"
  #get "users/edit"
  #get "users/update" 
  
  resources :emails

  resources :contact_people do
    resources :emails
    get :emails,  :on => :member
    #get :emails, :action => 'new', :controller => 'emails',  :on => :member
  end


  resources :clients_applications do
    get :add_app_to_client, :on => :member
    get :user_apps, :on => :member
  end

  resources :applications
  
  resources :bugs

  resources :clients
  
  resources :users

  resource :user_session, :only => [:new, :create, :destroy]

  root :to => "applications#index"

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

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
