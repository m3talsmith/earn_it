ActionController::Routing::Routes.draw do |map|
  map.resources :items
  map.root :controller => 'pages', :action => 'home'
end
