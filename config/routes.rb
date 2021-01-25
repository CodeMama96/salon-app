Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post] 
  
  root 'welcome#home'
  get "/signin" => "sessions#new"
  post '/signin' => "sessions#create"
  get 'logout' => "sessions#destroy"
  
  resources :services do 
    resources :appointments, only: [:new, :index, :create, :show, :destroy]
  end

  resources :stylists do
    resources :appointments, only: [:new, :index, :create, :show, :destroy]
  end
  
  resources :stylists, only: [:index]
  resources :appointments, only: [:index, :new, :create, :show, :destroy]
  resources :users, only: [:index, :new, :show]
  resources :services, only: [:index]

  get '*path', to: redirect('/signin')


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
