Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tops#index"
  get "/rooms", to: "rooms#index"
  resources :rooms do
    resources :checklists
  end
end
