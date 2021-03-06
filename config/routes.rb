Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  root 'blogs#index'
  get '/login',  to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope '(:locale)' do
    resources :blogs do
      resources :comments, only: [:index, :create, :new]

    end
  end
end
