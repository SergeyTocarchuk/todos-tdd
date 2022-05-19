Rails.application.routes.draw do
  root to: "todos#index"

  resources :todos, only: [:new, :create] do
    resource :completion, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create]
end
