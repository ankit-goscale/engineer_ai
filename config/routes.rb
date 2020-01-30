Rails.application.routes.draw do
  resources :tv_shows
  root 'tv_channels#index'
  resources :tv_channels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
