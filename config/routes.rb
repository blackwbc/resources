Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'resources#list'
  get "resources" => "resources#list", as:'resource_list'
  get "resources/new" => "resources#new"
  post "resources" => "resources#create"
  get "resources/:id" => "resources#show", as: "resource"
  get "resources/:id/edit" => "resources#edit", as: "resource_edit"
  patch "resources/:id" => "resources#update"
  delete "resources/:id" => "resources#delete"
  get "reservation/:id" => "reservation#show", as: "reservation"
  get "reservation/new/:resource_id" => "reservation#new", as: "reservation_new"
  post "reservation/:resource_id" => "reservation#create", as: "reservation_create"
  delete "reservation/:id" => "reservation#delete", as: "reservation_delete"

  resources :resources
  resources :reservation

end
