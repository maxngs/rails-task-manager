Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # User can list all the tasks
  get "tasks", to: "tasks#index", as: :tasks

  # Create a task
  get "tasks/new", to: "tasks#new", as: :new
  # Submit a task
  post "tasks", to: "tasks#create"

  # User can see the details
  get "tasks/:id", to: "tasks#show", as: :task

end
