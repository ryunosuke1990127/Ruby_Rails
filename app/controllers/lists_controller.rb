class ListsController < ApplicationController
  def new
    # Wiewへ渡すためのインスタンス変数を定義
    @list = List.new
  end
  def create
  # １.&2. データを受け取り新規登録するためのインスタンス作成(ローカル変数なので@はなし)
  list = List.new(list_params)
  # 3. データをデータベースに保存するためのsaveメソッド実行
  list.save
  # 4. トップ画面へリダイレクト
  redirect_to '/top'
  end

  def index
    # 画面一覧を取得する処理
    @lists =List.all
  end

  def show
  end

  def edit
  end


  private
  # ストロングパラメータの定義
  def list_params
    params.require(:list).permit(:title,:body)
  end
end
