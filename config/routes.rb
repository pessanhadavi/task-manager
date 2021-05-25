Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'
  # List all tasks
  get 'tasks', to: 'tasks#index', as: :tasks

  # Get the new task form
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # The route which will receive the submission of the form
  post 'tasks', to: 'tasks#create'

  # Get the existing task form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # The route which will receive the submission of the form
  patch 'tasks/:id', to: 'tasks#update'

  # List one task
  get 'tasks/:id', to: 'tasks#show', as: :task




end
