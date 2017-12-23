Rails.application.routes.draw do
  resources :students
  resources :courses
  resources :teachers
  resources :lessons
  resources :rooms
  resources :buildings
  resources :courses
  resources :students
  resources :dashboard

  resources :buildings do
    get '/today', to: 'buildings#today', as: :today
  end

  namespace :admin do
    resources :buildings
    resources :rooms
    resources :dashboard
    resources :lessons
    resources :teachers
    resources :courses
    resources :students

    root to: 'dashboard#index'
  end

  resources :lessons do
    resources :rooms, only: [:new, :create, :edit, :update, :destroy]
    resources :teachers, only: [:new, :create, :edit, :update, :destroy]
    resources :courses, only: [:new, :create, :edit, :update, :destroy]
  end


  root to: 'buildings#index'
end
