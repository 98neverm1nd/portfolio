Rails.application.routes.draw do
  devise_for :users, path: '',  path_names: {sign_in: 'login', sigh_out: 'logout', sign_up: 'register'}
  resources :portfolio_resources, except: [:show]

  root to:'pages#home'
  get 'angular-items', to: 'portfolio_resources#angular' 
  get 'portfolio/:id', to: 'portfolio_resources#show', as: 'portfolio_resources_show'
  get 'about', to: 'pages#about'
  get 'contacts', to: 'pages#contact'
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
