
Rails.application.routes.draw do


  resources :stickey_advertisements
  resources :simple_tables
  resources :hotels
  resources :buses
  resources :advertisements
  resources :buses
  resources :advertisements
  match "airline_ads" => "advertisements#airline_ads", as: :airline_ads, via: [:get, :post]
  match "carline_ads" => "advertisements#carline_ads", as: :carline_ads, via: [:get, :post]
  match "hotel_ads" => "advertisements#hotel_ads", as: :hotel_ads, via: [:get, :post]
  match "restaurant_ads" => "advertisements#restaurant_ads", as: :restaurant_ads, via: [:get, :post]
  match "train_ads" => "advertisements#train_ads", as: :train_ads, via: [:get, :post]
  match "tourpackage_ads" => "advertisements#tourpackage_ads", as: :tourpackage_ads, via: [:get, :post]
  match "travelnew_ads" => "advertisements#travelnew_ads", as: :travelnew_ads, via: [:get, :post]
  match "voyage_ads" => "advertisements#voyage_ads", as: :voyage_ads, via: [:get, :post]
  match "souvenir_ads" => "advertisements#souvenir_ads", as: :souvenir_ads, via: [:get, :post]



  resources :cities
  resources :tour_packages
  resources :ratings
  post 'to_give_rate' => 'ratings#to_give_rate', :as => :to_give_rate


# pyay guide
match "my_hotel_rating" => "ratings#my_hotel_rating", as: :my_hotel_rating, via: [:get, :post]
match "my_bus_rating" => "ratings#my_bus_rating", as: :my_bus_rating, via: [:get, :post]
match "my_bank_rating" => "ratings#my_bank_rating", as: :my_bank_rating, via: [:get, :post]
match "my_beauty_saloon_rating" => "ratings#my_beauty_saloon_rating", as: :my_beauty_saloon_rating, via: [:get, :post]
match "my_computer_rating" => "ratings#my_computer_rating", as: :my_computer_rating, via: [:get, :post]
match "my_shopping_mall_rating" => "ratings#my_shopping_mall_rating", as: :my_shopping_mall_rating, via: [:get, :post]
match "my_education_rating" => "ratings#my_education_rating", as: :my_education_rating, via: [:get, :post]
match "my_hospital_rating" => "ratings#my_hospital_rating", as: :my_hospital_rating, via: [:get, :post]
match "my_store_rating" => "ratings#my_store_rating", as: :my_store_rating, via: [:get, :post]
match "my_famous_place_rating" => "ratings#my_famous_place_rating", as: :my_famous_place_rating, via: [:get, :post]
match "my_gas_station_rating" => "ratings#my_gas_station_rating", as: :my_gas_station_rating, via: [:get, :post]
match "my_jewellery_rating" => "ratings#my_jewellery_rating", as: :my_jewellery_rating, via: [:get, :post]
match "my_emergency_contact_rating" => "ratings#my_emergency_contact_rating", as: :my_emergency_contact_rating, via: [:get, :post]
match "my_farmer_rating" => "ratings#my_farmer_rating", as: :my_farmer_rating, via: [:get, :post]
match "my_electronic_rating" => "ratings#my_electronic_rating", as: :my_electronic_rating, via: [:get, :post]
match "my_tea_shop_rating" => "ratings#my_tea_shop_rating", as: :my_tea_shop_rating, via: [:get, :post]
match "my_cycle_rating" => "ratings#my_cycle_rating", as: :my_cycle_rating, via: [:get, :post]
match "my_restaurant_rating" => "ratings#my_restaurant_rating", as: :my_restaurant_rating, via: [:get, :post]
  


 





  devise_for :users, :authentication_token => 'authentication_token'

  namespace :api do
  namespace :v1 do
    devise_scope :user do
      post 'registrations' => 'registrations#create', :as => 'register'
      post 'sessions' => 'sessions#create', :as => 'login'
      delete 'sessions' => 'sessions#destroy', :as => 'logout'
      post 'user_new' => 'registrations#user_new', :as => 'user_new'
    end
    get 'tasks' => 'tasks#index', :as => 'tasks'
  end
end



  resources :trains
  resources :voyages
    post "admins" => "admins#create"
  devise_for :admins, :controllers => {:sessions => "admins/sessions", :registrations => "admins/registrations"}
  resources :admins
  get 'dashboard' => 'admins#dashboard'
  get 'informations' => 'simple_tables#informations'


  resources :travel_posts
  resources :souvenirs
  resources :restaurants
  resources :carlines
  resources :airlines


  get 'airline_route/:id' => 'airlines#airline_route', as: :airline_route
  get 'train_route/:id' => 'trains#train_route', as: :train_route
  get 'voyage_route/:id' => 'voyages#voyage_route', as: :voyage_route
  get 'carline_route/:id' => 'carlines#carline_route', as: :carline_route


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
  root :to => redirect("/admins/sign_in")



  

  match "my_simple_table" => "simple_tables#my_simple_tables", as: :my_simple_table, via: [:get, :post]
  match "my_bank" => "simple_tables#my_bank", as: :my_bank, via: [:get, :post]
  match "my_beauty_saloon" => "simple_tables#my_beauty_saloon", as: :my_beauty_saloon, via: [:get, :post]
  match "my_computer" => "simple_tables#my_computer", as: :my_computer, via: [:get, :post]
  match "my_shopping_mall" => "simple_tables#my_shopping_mall", as: :my_shopping_mall, via: [:get, :post]
  match "my_education" => "simple_tables#my_education", as: :my_education, via: [:get, :post]
  match "my_hospital" => "simple_tables#my_hospital", as: :my_hospital, via: [:get, :post]
  match "my_store" => "simple_tables#my_store", as: :my_store, via: [:get, :post]
  match "my_gas_station" => "simple_tables#my_gas_station", as: :my_gas_station, via: [:get, :post]
  match "my_jewellery" => "simple_tables#my_jewellery", as: :my_jewellery, via: [:get, :post]
  match "my_emergency_contact" => "simple_tables#my_emergency_contact", as: :my_emergency_contact, via: [:get, :post]
  match "my_farmer" => "simple_tables#my_farmer", as: :my_farmer, via: [:get, :post]
  match "my_electronic" => "simple_tables#my_electronic", as: :my_electronic, via: [:get, :post]
  match "my_tea_shop" => "simple_tables#my_tea_shop", as: :my_tea_shop, via: [:get, :post]
  match "my_cycle" => "simple_tables#my_cycle", as: :my_cycle, via: [:get, :post]
  match "my_restaurant" => "simple_tables#my_restaurant", as: :my_restaurant, via: [:get, :post]
  match "my_famous_place" => "simple_tables#my_famous_place", as: :my_famous_place, via: [:get, :post]
  match "my_hotel" => "hotels#my_hotel", as: :my_hotel, via: [:get, :post]
  match "my_bus_gate" => "buses#my_bus_gate", as: :my_bus_gate, via: [:get, :post]

  match "my_hotel_ads" => "advertisements#my_hotel_ads", as: :my_hotel_ads, via: [:get, :post]
  match "my_bank_ads" => "advertisements#my_bank_ads", as: :my_bank_ads, via: [:get, :post]
  match "my_beauty_saloon_ads" => "advertisements#my_beauty_saloon_ads", as: :my_beauty_saloon_ads, via: [:get, :post]
  match "my_computer_ads" => "advertisements#my_computer_ads", as: :my_computer_ads, via: [:get, :post]
  match "my_shopping_mall_ads" => "advertisements#my_shopping_mall_ads", as: :my_shopping_mall_ads, via: [:get, :post]
  match "my_education_ads" => "advertisements#my_education_ads", as: :my_education_ads, via: [:get, :post]
  match "my_hospital_ads" => "advertisements#my_hospital_ads", as: :my_hospital_ads, via: [:get, :post]
  match "my_store_ads" => "advertisements#my_store_ads", as: :my_store_ads, via: [:get, :post]
  match "my_famous_place_ads" => "advertisements#my_famous_place_ads", as: :my_famous_place_ads, via: [:get, :post]
  match "my_gas_station_ads" => "advertisements#my_gas_station_ads", as: :my_gas_station_ads, via: [:get, :post]
  match "my_jewellery_ads" => "advertisements#my_jewellery_ads", as: :my_jewellery_ads, via: [:get, :post]
  match "my_emergency_contact_ads" => "advertisements#my_emergency_contact_ads", as: :my_emergency_contact_ads, via: [:get, :post]
  match "my_farmer_ads" => "advertisements#my_farmer_ads", as: :my_farmer_ads, via: [:get, :post]
  match "my_electronic_ads" => "advertisements#my_electronic_ads", as: :my_electronic_ads, via: [:get, :post]
  match "my_tea_shop_ads" => "advertisements#my_tea_shop_ads", as: :my_tea_shop_ads, via: [:get, :post]
  match "my_cycle_ads" => "advertisements#my_cycle_ads", as: :my_cycle_ads, via: [:get, :post]

  match "my_restaurant_ads" => "advertisements#my_restaurant_ads", as: :my_restaurant_ads, via: [:get, :post]
  match "my_bus_gate_ads" => "advertisements#my_bus_gate_ads", as: :my_bus_gate_ads, via: [:get, :post]
  match "my_stickey_advertisement" => "stickey_advertisements#my_stickey_advertisement", as: :my_stickey_advertisement, via: [:get, :post]
  match "my_main_ads" => "advertisements#my_main_ads", as: :my_main_ads, via: [:get, :post]



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
