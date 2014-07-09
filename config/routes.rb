Spree::Core::Engine.routes.append do

  namespace :admin do
    resources :products do
      namespace :allegro do
        resource :product
      end
    end
  end

end
