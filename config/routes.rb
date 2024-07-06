Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :condos, only: %i[index show] do
        resources :common_areas, only: %i[index show]
      end
      resources :unit_types, only: %i[index show]
      resources :units, only: %i[index show]
    end
  end
end
