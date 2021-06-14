Rails.application.routes.draw do
  resources :pictures, :galleries, :photoshoots, :users

  resources :galleries, only: [:show, :index] do
    resources :pictures, only: [:index]
  end

end
