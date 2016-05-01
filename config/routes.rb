Rails.application.routes.draw do

  devise_for :users

  resources :tasks

  authenticated :user do
  	root 'tasks#index', as: "authenticated_root"
  end

  root  'welcome#index'

end
