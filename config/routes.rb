Rails.application.routes.draw do

  namespace :agent do
    get 'pages/show'
  end

  root to: 'pages#home'

  devise_for :agents, path: 'agents', controllers: {
    sessions: 'agents/sessions'
  }
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions'
  }

  resources :tasks
  resources :quotes

  get 'pages/home'
  get 'pages/about'
  get 'pages/history'
  get 'pages/programs'
  get 'pages/requests'
  get 'pages/donate'
  get 'pages/contact'
  get 'pages/faqs'

  get 'admin/pages/home'
  get 'admin/pages/test'
  get 'admin/pages/blog'
  get 'admin/pages/notes'

  # get 'agent/pages#:page'

  get '/agent/pages/:page', to: 'agent/pages#show', as: 'agent_page'

  match "*path", to: "pages#error", via: :all

end