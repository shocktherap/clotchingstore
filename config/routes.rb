Rails.application.routes.draw do
  root to:  'home#index'

  namespace :backend do
    get '/', to: 'home#index'
    resources :category
  end
end
