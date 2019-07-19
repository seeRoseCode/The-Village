Rails.application.routes.draw do
  resources :events
  resources :calendars
  resources :family_members, except: [:new, :edit, :update, :show]
  resources :connections, except: [:new, :edit, :update, :show]
  resources :users, only: [:index, :edit, :destroy, :create, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  post '/addChild', to: 'users#addChild'

end
