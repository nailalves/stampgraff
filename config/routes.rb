Stampgraff::Application.routes.draw do
 
  resources :servicos


  resources :maquinas


  resources :papels


  resources :ordems do
 	 get :autocomplete_cliente_name, :on => :collection
	 get "versao_cliente", :on => :member
	 get "versao_empresa", :on => :member
   get "final", :on => :member
	end

  resources :clientes

  resources :produtos

  authenticated :user do
    root :to => 'home#index'
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users

	match '/ordems/versao_cliente/:id' => 'ordems#versao_cliente'
	match '/ordems/versao_empresa/:id' => 'ordems#versao_empresa'
	match '/clientes/new/order' => 'clientes#new_for_order'
	match '/clientes/ordem' => 'clientes#create_ordem'
  match '/ordems/:id/final' => 'ordems#final'

#get "home/index"

 # root :to => "home#index"

  #devise_for :users

#	devise_scope :user do
 # 	get "sign_in", :to => "devise/sessions#new"
#	end
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
  # match ':controller(/:action(/:id))(.:format)'
end
