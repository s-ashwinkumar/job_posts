Rails.application.routes.draw do
  resources :jobs
  devise_for :applicants, controllers: {
      sessions: 'applicants/sessions'
  }
  devise_for :employers, controllers: {
      sessions: 'employers/sessions'
  }
  root :to => "application#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
