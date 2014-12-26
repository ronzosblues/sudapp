Appl::Application.routes.draw do


  resources :images

  resources :amigos

  resources :video_skaters

  resources :photo_skaters do
    collection do
      get :new
    end
  end

  resources :photo_skaters do
    collection do
      get :new
    end
  end

  resources :video_posts do
    collection do
      get :new
    end
  end

  resources :photo_posts do
    collection do
      get :new
    end
  end


  resources :pedidos do
    collection do
      get :pedidos_user
    end
  end

  resources :videos do
    collection do
      get :inicio
    end
  end

  resources :contact

  resources :mailer

  resources :productos

  resources :tipo_productos

  resources :skaters

  resources :comment_posts

  resources :comment_photos

  resources :posts do
    collection do
      get :inicio
    end
  end

  resources :photos

  resources :albums

  devise_for :users

  resources :admin do
    collection do
      get :banner
      get :header
      get :footer
      get :activar_indumentaria
      get :desactivar_indumentaria
      get :crear_valor_indumentaria
      get :creare
      get :newsletterform
      post :contact_email_signed_in
      post :contact_email
    end
  end

  resources :welcome do
    collection do
      get :admin
    end
  end

  match "dispatch_email", to: "admin#dispatch_email", via: 'post'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#admin'

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
