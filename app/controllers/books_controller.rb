class BooksController < ApplicationController
  #def new
  #end

  #投稿フォームのアクション(index.html.erb)
  def index
    #一覧表示用のアクション
    @books = Book.all   #投稿したBookすべてを表示

    # Viewに渡すためのインスタンス変数に空のModelオブジェクトを生成
    # 新規投稿とリンクしているコード
    @book = Book.new
  end

  #新規投稿を保存するアクション(index.html.erb)
  def create
    #データを受け取り新規登録するインスタンス作成
    book = Book.new(book_params)

    if book.save   #データをデータベースに保存するsaveメソッド実行
      #フラッシュメッセージの表示
      flash[:notice] = "You have successfully posted!"    #flash[:notice]はデータを保管する箱
      #新規登録した本の詳細画面へリダイレクト
      redirect_to book_path(book.id)
    else
      #flash[:notice] = "You failed to post."
      @books = Book.all
      @book = book
      render :index
    end
  end

  #詳細画面でのアクション
  def show
    #レコードを１件だけ取得
    @book = Book.find(params[:id])  #findメソッド：数を受け取り、idカラムを引数と比べてレコードを取得
  end

  #編集画面でのアクション
  def edit
    @book = Book.find(params[:id])
  end

  #編集画面での更新アクション
  def update
    book = Book.find(params[:id])

    if book.update(book_params)
      #フラッシュメッセージの表示
      flash[:notice] = "You have successfully updated!"    #flash[:notice]はデータを保管する箱
      ##更新後、showアクションにリダイレクト
      redirect_to book_path(book.id)
    else
      #flash[:notice] = "You failed to update."
      @books = Book.all
      @book = book
      render :edit
    end
  end

  #一覧画面での削除アクション
  def destroy
    book = Book.find(params[:id])  #データ（レコード）を1件取得

    if book.destroy  #データ（レコード）を削除
      #フラッシュメッセージの表示
      flash[:notice] = "You have successfully deleted the post!"
      redirect_to '/books'  #一覧画面へリダイレクト
    else
      render :index
    end
  end

  private
  #ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
