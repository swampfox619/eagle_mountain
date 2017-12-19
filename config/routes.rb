Rails.application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  
  root 'welcome#home'

  resources :posts, only: [:new, :index, :create]
  resources :posts, :path => '', except: [:new, :index, :create] do
    resources :comments, only: [:create, :destroy]
  end
  
  get 'about' => 'welcome#about'
  get 'blog' => 'welcome#blog'
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

end
