Rails.application.routes.draw do
  
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
    resources :agents, only: [:show,:edit,:update,:index]
    resources :blogs, only: [:new, :create,:index, :show, :edit, :update, :destroy]

    get  'agents/prefecture_id/tokyo',  to: 'agents#agent_pref_index'

end
