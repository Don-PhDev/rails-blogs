Rails.application.routes.draw do
  resources :blogs
  get "home", to: "pages#home"
  get "about", to: "pages#about"

  root to: "pages#home"
end
