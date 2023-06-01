Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :houses do
    member do
      resources :bookings, only: %i[new create edit update]
    end
  end
  # resources :profil
  get 'profil', to: 'dashboards#profil', as: 'profil'
  delete 'houses/:id', to: 'houses#destroy', as: 'delete_house'
end
