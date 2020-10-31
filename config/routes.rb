Rails.application.routes.draw do
  get 'dashboard/index'
  #get 'welcome/index'
  resources :welcome
  resources :dashboard

  resources :books do
  	resources :comments
  end

  resources :sharings

  post '/approve', to: 'sharings#approve', as: 'approve'
  post '/deny', to: 'sharings#deny', as: 'deny'

  devise_for :users

	devise_scope :user do  
	   get '/users/sign_out' => 'devise/sessions#destroy'
	end
	resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
