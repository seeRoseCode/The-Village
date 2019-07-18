Rails.application.routes.draw do
  resources :family_members, :except => [:new, :edit, :update, :show]
  resources :connections, :except => [:new, :edit, :update, :show]
  resources :users, :except => [:new, :edit]

end
