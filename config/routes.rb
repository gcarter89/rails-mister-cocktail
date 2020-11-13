Rails.application.routes.draw do
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end


  # doses -
    # add a new dose to an existing cocktail
    # delete a dose that belongs to an existing cocktail
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
