RailsSr20x::Application.routes.draw do
  devise_for :users
  root :to => 'visitors#new'
	resources :missions
end
