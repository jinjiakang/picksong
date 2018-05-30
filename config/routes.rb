Rails.application.routes.draw do
  devise_for :users
  resources :songlists
  root "pages#index"
end
