Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :teachers, only: [:show] do
    resources :courses do
      resources :students
    end
  end
  root "static_pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
