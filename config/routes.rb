# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#          favourites_index GET    /favourites/index(.:format)                                                              favourites#index
#            favourites_new GET    /favourites/new(.:format)                                                                favourites#new
#           favourites_edit GET    /favourites/edit(.:format)                                                               favourites#edit
#           favourites_show GET    /favourites/show(.:format)                                                               favourites#show
#                      root GET    /                                                                                        pages#home
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                      user PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                 edit_user GET    /users/edit(.:format)                                                                    users#edit
#                     login GET    /login(.:format)                                                                         session#new
#                           POST   /login(.:format)                                                                         session#create
#                           DELETE /login(.:format)                                                                         session#destroy
#                   animals GET    /animals(.:format)                                                                       animals#index
#                           POST   /animals(.:format)                                                                       animals#create
#                new_animal GET    /animals/new(.:format)                                                                   animals#new
#               edit_animal GET    /animals/:id/edit(.:format)                                                              animals#edit
#                    animal GET    /animals/:id(.:format)                                                                   animals#show
#                           PATCH  /animals/:id(.:format)                                                                   animals#update
#                           PUT    /animals/:id(.:format)                                                                   animals#update
#                           DELETE /animals/:id(.:format)                                                                   animals#destroy
#                categories GET    /categories(.:format)                                                                    categories#index
#                           POST   /categories(.:format)                                                                    categories#create
#              new_category GET    /categories/new(.:format)                                                                categories#new
#             edit_category GET    /categories/:id/edit(.:format)                                                           categories#edit
#                  category GET    /categories/:id(.:format)                                                                categories#show
#                           PATCH  /categories/:id(.:format)                                                                categories#update
#                           PUT    /categories/:id(.:format)                                                                categories#update
#                           DELETE /categories/:id(.:format)                                                                categories#destroy
#                favourites GET    /favourites(.:format)                                                                    favourites#index
#                           POST   /favourites(.:format)                                                                    favourites#create
#             new_favourite GET    /favourites/new(.:format)                                                                favourites#new
#            edit_favourite GET    /favourites/:id/edit(.:format)                                                           favourites#edit
#                 favourite GET    /favourites/:id(.:format)                                                                favourites#show
#                           PATCH  /favourites/:id(.:format)                                                                favourites#update
#                           PUT    /favourites/:id(.:format)                                                                favourites#update
#                           DELETE /favourites/:id(.:format)                                                                favourites#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do


root :to => 'pages#home'
resources :users, :only => [:new, :create, :update, :index]
get '/users/edit' => 'users#edit', :as => :edit_user
get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'
# get '/users/:id', to: 'users#show', as: 'users_show'
get 'users/:id', to: 'users#show'
resources :animals
resources :categories
  resources :favourites






  # resources :categories_show_path, :path => "/Pigs"

end
