Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    member do
      get 'users'
    end
  end
  resources :users
  resources :attendances
end
