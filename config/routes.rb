DsoWeb::Application.routes.draw do
  
  resources :orchestra_sections


  resources :contacts


  resources :pages

  resources :abouts
  resources :about, :controller => "abouts"

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :concerts


  resources :staffs
  resources :staff, :controller => "staffs"


  resources :auditions


  root to: 'pages#index'
  resources :events

end