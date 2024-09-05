Rails.application.routes.draw do
  get "services/index"
  get "abouts/index"
  get "about/index"
  get "homes/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"

  # Homes
  root "homes#index"

  # Abouts
  get "/about", to: "abouts#index"  # Rute GET ke aksi 'about' di kontroler 'pages'

  # Services
  get "/service", to: "services#index"

  # Menus
  get "/menu", to: "menu#create"
  # get "/contact", to: "contacts#create"


  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
end
