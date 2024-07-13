class BooksController < ApplicationController
  #def new
  #end

  #投稿フォームのアクション
  def index
    # Viewに渡すためのインスタンス変数に空のModelオブジェクトを生成
    @book = Book.new
  end

  #新規投稿を保存するアクション
  def create
    #データを受け取り新規登録するインスタンス作成
    book = Book.new(book_params)
    #データをデータベースに保存するsaveメソッド実行
    book.save
    #新規登録した本の詳細画面へリダイレクト
    redirect_to '/'
    #redirect_to 'books/:id'

  end

  def show
  end

  def edit
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
