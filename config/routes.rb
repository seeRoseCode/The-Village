Rails.application.routes.draw do
  resources :family_members, :except => [:new, :edit]
  resources :connections, :except => [:new, :edit]
  resources :users, :except => [:new, :edit]
end
