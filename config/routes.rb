Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :students, only: [:show]
  resources :teachers, only: [:show] do
    resources :courses
    resources :students, only: [:create, :show]
  end
  root "static_pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
