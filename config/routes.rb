Rails.application.routes.draw do
  get 'user_stats/foods/:group' => 'user_stats#foods'

  get 'user_stats/calculate_calories/:foods' => 'user_stats#calculate_calories'

  resources :user_stats

  resources :prescriptions

  resources :prescriptions

  resources :circles
  resources :symptoms
  resources :feelings

  resources :appointments

  devise_for :users
  
   get 'routines/symptom_list' => 'routines#symptom_list'

  resources :routines

  get 'routines/symptom_check/:symptoms' => 'routines#symptom_check'
  get 'calendar' => 'appointments#calendar'
  get 'responseblake(.:format)' => 'appointments#responseblake'
  get 'notifications' => 'appointments#notifications'
  get 'dashboard' => 'application#root'
  get 'recent-prescription' => 'prescriptions#most_recent'
  get 'prescription-reduce' => 'prescriptions#reduce'
  get 'refill' => 'prescriptions#refill'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#root'

  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'


  post 'dashboard/user_status' => 'dashboard#user_status' 

  post 'circles/add_user' => 'circles#add_user'

  get 'dashboard/zalman' => "dashboard#zalman"

  


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
