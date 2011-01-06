ActionController::Routing::Routes.draw do |map|
  map.resources :clients

  map.resources :journalists

  map.resources :contacts

  map.resources :suppliers
  map.resources :user_sessions
  map.resources :users
  
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  map.root :controller => "home"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
