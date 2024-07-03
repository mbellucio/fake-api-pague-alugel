Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :condos, only: [:index, :show]
      resources :unit_types, only: [:index, :show]
      resources :units, only: [:index, :show]
    end
  end
end
