Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post] 
  
  root 'welcome#home'
  get "/signin" => "sessions#new"
  post '/signin' => "sessions#create"
  get 'logout' => "sessions#destroy"
  
  resources :services do 
    resources :appointments, only: [:new, :index, :create, :show, :destroy]
  end

  resources :stylists, :appointments, :users, :services



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
