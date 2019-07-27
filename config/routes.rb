Rails.application.routes.draw do
  get 'session/new'
  get 'pages/home'
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'pages#home'
resources :users, :only => [:new, :create, :update, :index]
  get '/users/edit' => 'users#edit', :as => :edit_user

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
