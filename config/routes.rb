Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root 'blogs#index'
  get '/login',  to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :blogs
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
