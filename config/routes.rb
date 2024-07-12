Rails.application.routes.draw do
  #resourcesメソッドを使用してルーティングを記述
  #get 'books/new'
  #get '/top' => 'homes#top'   #トップ画面
  root to: 'homes#top'    #トップ画面（ルートパスで設定）
  resources :books

  #やること（アプリを作成：７章を参考に）
  #・show.html.erbのdestroyアクションのパス確認
  #・edit.html.erbのupdateアクションののパス確認



  #get 'books' => 'books#index'   #一覧画面（一覧）
  #post 'books' => 'books#create'   #一覧画面（新しい投稿）
  #get 'books/:id' => 'books#show', as: 'books'   #詳細画面
  #get 'books/:id/edit' => 'books#edit', as: 'edit_books'   #編集画面
  #patch 更新機能
  #delete   削除機能

  #get 'books/index'   #一覧画面
  #get 'books/show'   #詳細画面
  #get 'books/edit'   #編集画面
  #get：リソースの取得、post：リソースの更新やリソースへのデータ追加など、delete：リソース削除
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

#resourcesメソッド：ルーティングを一括して自動生成する