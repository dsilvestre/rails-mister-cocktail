Rails.application.routes.draw do
  root 'cocktails#index'

  resources :doses, :only => [:destroy]

  resources :cocktails do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :doses, :except => [:destroy]
  end
end
