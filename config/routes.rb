Rails.application.routes.draw do

  resources :todo_lists do
  	resources :todo_items do
  		member do
  			patch :complete
  		end
  	end
  end

  devise_for :users

  authenticated :user do
  	root 'todo_lists#index', as: "authenticated_root"
  end

  root  'welcome#index'

end
