Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :courses do
    resources :enrolleds
  end
  resources :teachers, only: [:show] do
    resources :courses, only: [:new, :create, :show, :destroy] do
      resources :enrolleds, only: [:new, :create, :destroy] do
        patch 'add_point', to: 'enrolleds#add_point', as: 'add_point'
        patch 'subtract_point', to: 'enrolleds#subtract_point', as: 'subtract_point'
      end
    end
  end
  root "static_pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
