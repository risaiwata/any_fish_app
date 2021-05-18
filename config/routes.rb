Rails.application.routes.draw do
  get 'agents/show'
  devise_for :anglers, controllers: {
    sessions:      'anglers/sessions',
    passwords:     'anglers/passwords',
    registrations: 'anglers/registrations'
    }

    devise_for :agents, controllers: {
      sessions:      'agents/sessions',
      passwords:     'agents/passwords',
      registrations: 'agents/registrations'
    }
    root  'top#index'
    #resources :users, only: [:show]
end
