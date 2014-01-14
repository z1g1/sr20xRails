RailsSr20x::Application.routes.draw do
  root :to => 'visitors#new'
	resources :missions
end
