Devel::Application.routes.draw do
  get "welcome/index"
  # root :to => "home#index"
  root to: 'home#index', constraints: lambda { |r| r.env['warden'].authenticate? }
  root to: 'welcome#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
