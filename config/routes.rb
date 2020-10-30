Rails.application.routes.draw do

  get 'posts', to: 'posts#index'
  get 'posts/new', to: 'posts#new'
  #ここでのgetとpostの意味がわからない
  #なぜここでこれらを定義するのか？
  post 'posts', to: 'posts#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end


