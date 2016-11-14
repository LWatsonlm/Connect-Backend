Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    member do
      get 'users' # AM: Do you end up using this route? Don't see a `users` method in your EventsController.
    end
  end
  resources :users
end
