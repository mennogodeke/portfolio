Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'

  resources :articles do
    resources :comments
  end

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

end