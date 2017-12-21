Rails.application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'  
  root 'welcome#home'

  resources :posts, only: [:new, :index, :create]
  resources :posts, :path => '', except: [:new, :index, :create] do
    resources :comments, only: [:create, :destroy]
  end
  
end
