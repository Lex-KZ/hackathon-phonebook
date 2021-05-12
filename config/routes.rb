Rails.application.routes.draw do
  get 'users/index'
  root to: 'contacts#index'
  
  devise_for :users
  get 'contacts', to: 'contacts#index', as: 'contacts'
  post 'contacts', to: 'contacts#create'
  get 'contacts/new', to: 'contacts#new', as: 'new_contact'
  get 'contacts/:id/edit', to: 'contacts#edit', as: 'edit_contact'
  get 'contacts/:id', to: 'contacts#show', as: 'contact'
  patch 'contacts/:id', to: 'contacts#update'
  put 'contacts/:id', to: 'contacts#update'
  delete 'contacts/:id', to: 'contacts#destroy'

  get '/restricted', to: 'contacts#restricted', as: 'restricted'
  get '/users', to: 'users#index', as: 'users'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
