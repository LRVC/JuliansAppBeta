Rails.application.routes.draw do
  root 'dashboard#index'

  resources :ideas do
    resources :schemes
  end
  
end
