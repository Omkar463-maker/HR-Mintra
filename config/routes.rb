Rails.application.routes.draw do
  root 'home#index'

  resources :employees
  resources :documents
  
  #custom routes
  
  get 'about' => "pages#about_us"
  get 'contact' => "pages#contact_us"
  get 'privacy-policy' => "pages#privacy_policy"
  get 'terms-and-conditions' => "pages#terms_and_conditions"
  #get "home/index"
  #another method to define route (
  #get "/home" => "home#index"
  
  get "up" => "rails/health#show", as: :rails_health_check
end
