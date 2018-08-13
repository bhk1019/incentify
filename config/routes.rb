Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :courses do
    resources :enrolleds
  end
  resources :teachers, only: [:show] do
    resources :courses do
      resources :enrolleds
    end
  end
  root "static_pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
