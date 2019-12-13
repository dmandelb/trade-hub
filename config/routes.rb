Rails.application.routes.draw do
  devise_for :trainers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'trainer#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
