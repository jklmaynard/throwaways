Rails.application.routes.draw do
  resources :poems do
    resources :lines
  end
end
