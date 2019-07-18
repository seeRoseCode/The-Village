Rails.application.routes.draw do
  resources :family_members, except: [:new, :edit, :update, :show]
  resources :connections, except: [:new, :edit, :update, :show]
  resources :users, only: [:index, :edit, :destroy, :create]
  post 'users/login', to: 'auth#create'
  get 'users/profile', to: 'users#profile'

end
