Rails.application.routes.draw do
  root to:  'home#index'

  namespace :backend do
    get '/', to: 'home#index'
    resources :subcategory, only: [:index]
    resources :category do
      resources :subcategory
    end
    resources :vendor
    resources :color
    resources :size
  end
end
