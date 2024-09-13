Rails.application.routes.draw do
  #get 'books/new'
  #resourcesメソッドを使用してルーティングを記述
  root to: "homes#top"    #トップ画面（ルートパスで設定）
  resources :books
  #resourcesメソッド：ルーティングを一括して自動生成する

  #get 'books' => 'books#index'   #一覧画面（一覧）
  #post 'books' => 'books#create'   #一覧画面（新しい投稿）
  #get 'books/:id' => 'books#show', as: 'book'   #詳細画面
  #get 'books/:id/edit' => 'books#edit', as: 'edit_book'   #編集画面
  #patch 'books/:id' => 'books#update', as: 'update_book' #更新機能
  #delete 'books/:id' => 'books#destroy', as: 'destroy_book'   #削除機能

  #get：リソースの取得、post：リソースの更新やリソースへのデータ追加など、delete：リソース削除
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end