Rails.application.routes.draw do
  resources :products
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users
      resources :tokens, only: [:create]
    end
  end
end
