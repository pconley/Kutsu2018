Rails.application.routes.draw do

  devise_for :admins
  resources :quotes
  resources :tasks
  root to: 'pages#home'

  get 'pages/home'
  get 'pages/about'
  get 'pages/history'
  get 'pages/programs'
  get 'pages/requests'
  get 'pages/donate'
  get 'pages/contact'
  get 'pages/faqs'

  get 'admin/test'

  match "*path", to: "pages#error", via: :all

end