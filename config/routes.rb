Rails.application.routes.draw do

  get 'registrations/new'
  root to: 'static_pages#home'
  resources :static_pages

  resources :users do 
  	resources :gossips do 
  		resources :commentaries
  	end
  end
end
