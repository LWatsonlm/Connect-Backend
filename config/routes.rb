Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events
  resources :users
  resources :attendances

  post '/attendances/checkin/:user/:event' => 'attendances#create'
  get '/users/id/:linkedinId' => "users#id"
  root "users#get_user"
  post '/code/' => "users#get_code"
  get '/code' => "users#get_code"
end
