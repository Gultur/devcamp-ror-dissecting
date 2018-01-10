Rails.application.routes.draw do
  #on veux eviter que l'id
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'


  #get 'pages/home'
  #get 'pages/about'
  get 'about-me', to: 'pages#about'
  #get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # on veut faciliter l'accès au la page d'accueil, il n'y aura plus besoin d'avoir pages/home
  # mais http://127.0.0.1:3000/ suffit
  root to: 'pages#home'

end
