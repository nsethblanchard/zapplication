Rails.application.routes.draw do
  root 
  
  resources :contacts
  
  resources :companies do
    resources :contacts
  end
  
  resources :users do
    resources :applications
  end

  resources :applications

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
