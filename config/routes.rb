Rails.application.routes.draw do
  resources :v1_needs
  resources :homes
  # root 'homes#index'
  root 'v1_needs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
