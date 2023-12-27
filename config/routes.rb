Rails.application.routes.draw do
  devise_for :users, controllers: {
  omniauth_callbacks: "omniauth_callbacks"
}

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tops#index"
  get "/rooms", to: "rooms#index"
  resources :rooms do
    resources :checklists do
      member do
        patch :toggle
      end
    end
  end
end
