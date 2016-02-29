Rails.application.routes.draw do
  resources :products

  root to: 'products#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products
    end
    namespace :v2 do
      resources :products
    end
  end

end
