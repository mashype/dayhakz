Rails.application.routes.draw do

  devise_for :users
  root  'task#index'

  resources :tasks

end
