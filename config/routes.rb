Rails.application.routes.draw do
  get 'welcome/index'
  resources :coins
  # get '/coins', to: 'coins#index'

  root to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
