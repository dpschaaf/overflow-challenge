DbcOverflow::Application.routes.draw do
  root :to => 'pages#home'

  resources :users do
    resources :questions
    resources :comments
    resources :answers
  end

  resources :questions do
    resources :comments
    resources :answers
  end

  resources :comments do
    resources :questions do
      resources :users, only: [:new, :create]
    end
  end

  resources :answers do
    resources :questions do
      resources :users, only: [:new, :create]
    end
  end

  resource :sessions, only: [:new, :create, :destroy]

end
