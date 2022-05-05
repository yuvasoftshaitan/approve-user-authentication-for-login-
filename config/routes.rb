Rails.application.routes.draw do
  #root 'tasks#index'
  root 'homes#index'
  devise_for :users, controllers: { registrations: 'registrations' , sessions: 'sessions' }
  #devise_for :users
 
  #resources :devise
   #resources :sessions
  #    get "log_in" => "sessions#new", :as => "log_in"
  # get "sign_up" => "users#new", :as => "sign_up"
  #post "/homes/:id/accept", to: "homes#accept" , as:'accept'

   resources :homes do 
   member do
    post :accept
    post :reject
  
     resources  :tasks do
       member do
       post :finish_work
       post :in_progress
       post :start_work
        end 
    end 
   end
end
  




   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
