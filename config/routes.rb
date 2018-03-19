Rails.application.routes.draw do

  root to: 'public/pages#show', id: 'home'

  namespace :admin do
    resources :agents
    resources :pages, only: [:show]
    #get 'pages/:page', to: 'pages#show', as: 'page'
    get 'test/sendex', to: 'admin/test#sendex', as: 'sendex'
  end

  namespace :agent do
    resources :orders
    resources :pages, only: [:show]
  end
  # get '/agent/pages/:page', to: 'agent/pages#show', as: 'agent_page'


  devise_for :agents, path: 'agents', controllers: {
    sessions: 'agents/sessions'
  }
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions'
  }

  resources :tasks # TODO: move to admin
  resources :quotes # TODO: move to admin

  namespace :public do
    resources :pages, only: [:show]
  end

  match "*path", to: "public/pages#show", id: 'error', via: :all, as: 'error_page'

end