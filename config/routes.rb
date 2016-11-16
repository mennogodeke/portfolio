Rails.application.routes.draw do
  root 'welcome#index'
  get '/contact' => 'contact#index', :as => 'contact'
  get 'welcome/index'
  get '/cv' => 'cv#index', :as => 'cv'

  resources :educations
  resources :jobs
  resources :projects

  resources :skills do
    resources :activeties
  end

  resources :articles do
    resources :comments
  end

  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

end