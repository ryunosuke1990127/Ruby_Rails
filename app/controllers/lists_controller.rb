class ListsController < ApplicationController
  def new
    # Wiewへ渡すためのインスタンス変数を以下定義
    @list = List.new
  end

  def index
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
