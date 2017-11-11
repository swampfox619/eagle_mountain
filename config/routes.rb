Rails.application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
resources :posts
root 'welcome#home'

get 'about' => 'welcome#about'
get 'blog' => 'welcome#blog'
get 'features' => 'welcome#features'
get 'packages' => 'welcome#packages'
get 'portfolio' => 'welcome#portfolio'
get 'contact', to: 'messages#new', as: 'contact'
post 'contact', to: 'messages#create'

end
