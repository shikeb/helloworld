Rails.application.routes.draw do
  root :to => 'articles#index'
  get 'first_test/index'
  resources :articles , only: [:show, :index, :create, :new]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
