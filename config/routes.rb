Rails.application.routes.draw do

  root 'welcome#index'
  get "/signin" => "sessions#new"
  post '/signin' => "sessions#create"
  get 'logout' => "sessions#destroy"
  
  resources :stylists, :services, :appointments, :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
