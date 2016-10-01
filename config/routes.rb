Rails.application.routes.draw do
  resources :poems do
    resources :lines
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
