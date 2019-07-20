Rails.application.routes.draw do
  namespace :admin do
      resources :products

      root to: "products#index"
    end
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
