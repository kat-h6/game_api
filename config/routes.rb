Rails.application.routes.draw do
  root to: 'pages#home'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :players, only: [ :index, :show, :update, :create, :destroy ]
      resources :scores, only: [ :index, :show, :update, :create, :destroy ]
      resources :stats, only: :show
      resource :impact_report
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
