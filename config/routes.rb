RailsSr20x::Application.routes.draw do
  root :to => "visitors#new"
  
	devise_for :users
	resources :users
	resources :missions
end
