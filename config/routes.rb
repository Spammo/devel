Devel::Application.routes.draw do
	constraints lambda { |req| !req.session[:user_id].blank? } do
		root :to => "home#index", :as => "dashboard"
	end
  root to: 'welcome#index'
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end
