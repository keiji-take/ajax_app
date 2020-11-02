Rails.application.routes.draw do

  root to: 'posts#index'
  # get 'posts/new', to: 'posts#new'
  #ここでのgetとpostの意味がわからない
  # →これはHTTPメソッドを使って何をやるのかを定義している
  #なぜここでこれらを定義するのか？
  # →HTTPメソッドそれぞれに役割があり、getだとデータの取得。postだとデータの送信(主に新規登録)を意味する
  post 'posts', to: 'posts#create'
  get 'posts/:id', to: 'posts#checked'

end


