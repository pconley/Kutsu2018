Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :admins

  resources :quotes
  resources :tasks

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

  match "*path", to: "pages#error", via: :all

end