#routes.rb
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/top' => 'homes#top'
  resources :lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "lists/new"
  post "lists" => "lists#create"
  get "lists" => "lists#index"
  get "lists/:id/edit" => "lists#edit"
  patch "lists/:id" => "lists#update"
  delete "lists/:id" => "lists#destroy"
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
    
  # get "up" => "rails/health#show", as: :rails_health_check
  get "lists/:id" => "lists#show"

  # Defines the root path route ("/")
  # root "posts#index"
 
end
