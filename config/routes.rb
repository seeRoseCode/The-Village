Rails.application.routes.draw do
  resources :reservations
  resources :events, except: [:new, :edit]
  resources :calendars, except: [:new, :edit]
  resources :family_members, except: [:new, :edit, :update, :show]
  resources :connections, except: [:new, :edit, :update, :show]
  resources :users, only: [:index, :update, :destroy, :create, :show]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
  post '/addChild', to: 'users#addChild'

end
