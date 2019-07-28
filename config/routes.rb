# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#          categories_index GET    /categories/index(.:format)                                                              categories#index
#            categories_new GET    /categories/new(.:format)                                                                categories#new
#           categories_edit GET    /categories/edit(.:format)                                                               categories#edit
#           categories_show GET    /categories/show(.:format)                                                               categories#show
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

  resources :animals
  resources :categories
  # resources :categories_show_path, :path => "/Pigs"

end
