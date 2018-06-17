Rails.application.routes.draw do
  resources :portfolio_resources
  root to:'pages#home'
  get 'about', to: 'pages#about'
  get 'contacts', to: 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
