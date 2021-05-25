Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'
  # List all tasks
  get 'tasks', to: 'tasks#index', as: :tasks
  
  # List one restaurant
  get 'tasks/:id', to: 'tasks#show', as: :task
end
