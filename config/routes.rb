Rails.application.routes.draw do

  #get '/cable'

  resource  :session
  resources :examples

  resources :messages do
    resources :comments
  end

  get '/websocket', to: ActionCable.server

  resources :cable
  #get '/cable', to: ActionCable.server

  root 'examples#index'
end
