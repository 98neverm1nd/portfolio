Rails.application.routes.draw do
  resources :portfolio_resources, except: [:show]

  root to:'pages#home'

  get 'portfolio/:id', to: 'portfolio_resources#show', as: 'portfolio_resources_show'
  get 'about', to: 'pages#about'
  get 'contacts', to: 'pages#contact'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
