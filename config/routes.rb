Rails.application.routes.draw do
  get 'pages/home'
  resources :groups do
    post "join", on: :member
    delete "leave", on: :member
  end
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
