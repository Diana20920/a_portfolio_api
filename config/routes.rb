Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :portfolios, only: [:index, :show] do
        resources :sites, only: [:index, :show] do
          resources :spaces, only: [:index]
        end
      end
    end
  end
end
