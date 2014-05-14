DbcOverflow::Application.routes.draw do
  root :to => 'questions#index'

  resources :users
  resources :questions
  resource :sessions, only: [:new, :create, :destroy]

end
