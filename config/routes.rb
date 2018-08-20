Rails.application.routes.draw do
  root to: 'home#show'
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :v1 do
    resources :dependentes
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
