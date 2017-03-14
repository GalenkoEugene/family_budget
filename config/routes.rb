Rails.application.routes.draw do
  devise_for :users
  get 	'persons/profile'
  root 	'persons#profile'
  post 	'families/search'
  post 	'families/new_family'
  
  get 	'profits/add'
  post 	'profits/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
