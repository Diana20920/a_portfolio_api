Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :portfolios, only: [:index, :show] do
        resources :sites, only: [:index, :show] do
          resources :spaces, only: [:index, :show]
        end
      end
      get '/statistics/sites/:id', to: 'statistics#site'
      get '/statistics/portfolios/:id', to: 'statistics#portfolio'
    end
  end
end
