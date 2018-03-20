Rails.application.routes.draw do

  root to: 'public/pages#show', id: 'home'

  namespace :public do
    # show the static public pages
    resources :pages, only: [:show]
  end

  namespace :agent do
    resources :orders
    resources :pages, only: [:show]
  end

  namespace :admin do
    resources :agents
    resources :tasks 
    resources :quotes 
    resources :pages, only: [:show]
    get 'test/sendex', to: 'admin/test#sendex', as: 'sendex'
  end

  devise_for :agents, path: 'agents', controllers: {
    sessions: 'agents/sessions'
  }
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions'
  }

  match "*path", to: "public/pages#show", id: 'error', via: :all, as: 'error_page'

end