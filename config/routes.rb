Rails.application.routes.draw do
  devise_for :users
  get 'dashboard/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root to: 'dashboard#index'

resources :customers, only: [:index, :show, :update]
get "angular_test", to: "angular_test#index"
get "fake_billing", to: "fake_billing#show"
get "fake_billing", to: "fake_billing#show"
end
