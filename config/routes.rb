Rails
  .application
  .routes
  .draw do
    devise_for :users, controllers: { registrations: 'users/registrations' }

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    root 'users#show'
    resources :users, only: %i[show edit update] do
      get 'favorite', on: :member
    end
    resources :books, except: [:index] do
      resources :likes, only: %i[create destroy]
    end
    resources :descriptions, only: [:index]

    devise_scope :user do
      post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    end
  end
