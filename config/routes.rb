Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :houses do
    member do
      resources :bookings, only: %i[new create edit update destroy]
    end
  end
  # resources :profil
  get 'profil', to: 'dashboards#profil', as: 'profil'
  delete 'houses/:id', to: 'houses#destroy', as: 'delete_house'
  delete 'bookings/:id', to: 'bookings#destroy', as: 'delete_booking'
  patch 'bookings/:id/approve', to: 'bookings#approve', as: 'approve_booking'
  patch 'bookings/:id/decline', to: 'bookings#decline', as: 'decline_booking'
end
