Devel::Application.routes.draw do
  get "welcome/index"
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end