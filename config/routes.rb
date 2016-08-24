Rails.application.routes.draw do
  get 'user/new'

  match '/signup', to: 'user#new', via: 'get'

  root 'static_pages#home'

  match '/home', to: 'static_pages#home', via: 'get'

  match '/help', to: 'static_pages#help', via: 'get'

  match '/about', to: 'static_pages#about', via: 'get'

  match '/contact', to: 'static_pages#contact', via: 'get'

  match '/', to: 'static_pages#home', via: 'get'

  get 'static_pages/help'

  get 'static_pages/about'

  get 'static_pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
