Rails.application.routes.draw do
  get 'search/new'
  get 'search/create'
  get 'search/index'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/user_details',to: 'users#index'
  get 'edit_user/:id',to: 'users#edit'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/new_car', to: 'cars#new'
  post '/new_car', to: 'cars#create'
  get '/cars', to: 'cars#index'
  get '/delete_car/:id', to: 'cars#destroy'
  get '/new_fuel_log/:id', to: 'fuel_logs#new'
  post '/new_fuel_log/:id', to: 'fuel_logs#create'
  get '/fuel_logs/', to: 'fuel_logs#index'
  get '/fuel_logs/:id', to: 'fuel_logs#index'
  get '/delete_fuel_log/:id', to: 'fuel_logs#destroy'
  get '/searchs/:name', to: 'search#index'
  get '/search', to: 'search#new'
  post '/search/new', to: 'search#create'
  get '/terms', to: 'static_pages#terms'
  get '/terms_read', to: 'static_pages#terms-r'
  get '/privacy', to: 'static_pages#privacy'
  get '/privacy_read', to: 'static_pages#privacy-r'
  get '/about', to: 'static_pages#about'
  get '/new_forum_post', to: 'forum_posts#new'
  post '/new_forum_post', to: 'forum_posts#create'
  get '/forum_posts', to: 'forum_posts#index'
  get '/delete_forum_post/:id',to: 'forum_posts#destroy'
  get '/new_forum_reply/', to: 'forum_replies#new'
  get '/new_forum_reply/:id', to: 'forum_replies#create'
  post '/new_forum_reply/:id',to: 'forum_replies#create'
  post '/forum_replies/', to: 'forum_replies#create'
  post '/forum_replies/:id', to: 'forum_replies#create'
  get '/forum_replies', to: 'forum_replies#index'
  get '/delete_forum_reply/:id',to: 'forum_replies#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
