Rails.application.routes.draw do
  resources :tasks
  resources :user_tasks
  resources :memberships
  resources :communities
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
