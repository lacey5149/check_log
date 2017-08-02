Rails.application.routes.draw do
 
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'checks#index'

  get 'new_check' => 'checks#new'

  get 'view_checks' => 'checks#index'

  get 'custody' => 'master#custody_accounts'

  get 'alerts' => 'master#alerts'

  resources :checks
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
