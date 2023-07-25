Rails.application.routes.draw do
  # get 'articles_with_last_comments/index'
  
  devise_for :users , controllers: {
    sessions: 'users/sessions'
  }

  get '/articles_with_last_comments', to: 'articles_with_last_comments#index', as: 'articles_with_last_comments'

  resources :frnds
  root to: "home#index"
  get 'home/index'
  get 'home/about'

  resources :articles  do
    
    post 'like', on: :member
    resources :comments
    
  end
  resources :articles do
    get '/page/:page', action: :index, on: :collection
  end
  
  
  # resources :articles, only: :index do
    
  # end
  

  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
