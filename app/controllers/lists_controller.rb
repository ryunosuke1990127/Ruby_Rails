class ListsController < ApplicationController
  def new
    # Wiewへ渡すためのインスタンス変数を定義
    @list = List.new
  end
  def create
  # 1&2. データを受け取り新規登録するためのインスタンス作成(ローカル変数なので@はなし)
  list = List.new(list_params)
  # 3. データをデータベースに保存するためのsaveメソッド実行
  list.save
  # 4. 変更後を詳細画面へ変更
  # 変更前
  # redirect_to '/top'
  # 変更後
  redirect_to list_path(list.id)
  end

  def index
    # 画面一覧を取得する処理
    @lists =List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  # 更新機能の追加
  def update
    list = List.find(params[:id])
    list.update(list_params)
    # 4. 変更後を詳細画面へリダイレクト
    redirect_to list_path(list.id)
  end


  private
  # ストロングパラメータの定義
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
