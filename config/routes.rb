Rails.application.routes.draw do
  # get 'articles_with_last_comments/index'
  get '/articles_with_last_comments', to: 'articles_with_last_comments#index', as: 'articles_with_last_comments'
  
  devise_for :users , controllers: {
    sessions: 'users/sessions'
  }

  resources :frnds
  root to: "home#index"
  get 'home/index'
  get 'home/about'

  resources :articles do
    resources :comments
  end
  

  


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
