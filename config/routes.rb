Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }

  resources :posts do
    resources :comments, except: [:index]
  end

  get "home", to: "pages#home"
  get "about", to: "pages#about"

  root to: "pages#home"
end
