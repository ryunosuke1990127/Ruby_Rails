class ListsController < ApplicationController
  def new
    # Wiewへ渡すためのインスタンス変数を定義
    @list = List.new
  end

  def create
  @list = List.new(list_params)
    if @list.save
      
      # フラッシュメッセージの定義
      flash[:notice]="投稿が成功しました"
      redirect_to list_path(@list.id)
    else
      render :new
    end
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

  #削除機能の追加
  def destroy
    list = List.find(params[:id])
    list.destroy #レコードの削除
    redirect_to '/lists' #投稿画面へリダイレクト
  end


  private
  # ストロングパラメータの定義
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
