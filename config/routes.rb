Rails.application.routes.draw do

root 'welcome#home'

get 'about' => 'welcome#about'
get 'blog' => 'welcome#blog'
get 'contact' => 'welcome#contact'
get 'features' => 'welcome#features'
get 'packages' => 'welcome#packages'
get 'portfolio' => 'welcome#portfolio'

end
