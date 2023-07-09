Rails.application.routes.draw do
  get 'lists/new'
  post 'lists'=>'lists#create' #データを作成(保存する)アクションを追加
  get 'lists'=>'lists#index'
  get 'lists/:id'=>'lists#show' ,as: 'list'
  get 'lists/edit'
  get 'top' =>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
