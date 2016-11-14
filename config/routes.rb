Rails.application.routes.draw do
  resources :educations
  resources :jobs
  resources :projects

  resources :skills do
    resources :activeties
  end

  resources :articles do
    resources :comments
  end

  get 'welcome/index'
  root 'welcome#index'

  get '/cv' => 'cv#index', :as => 'cv'



  devise_for :users, controllers: {
      sessions: 'users/sessions',
      passwords: 'users/passwords',
      registrations: 'users/registrations'
  }

end