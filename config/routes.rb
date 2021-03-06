Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
   resources :users, :only => [:create, :show, :update, :destroy, :index]
    post '/delete_users' => 'users#delete_users'

    resources :sessions, :only => [:create, :destroy]
    #audits
    get '/audit_lgs' => 'audit#audit_logs'
end
