Rails.application.routes.draw do
  resources :ratings
  resources :users
  resources :films
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
