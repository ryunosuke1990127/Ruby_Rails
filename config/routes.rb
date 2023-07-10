Rails.application.routes.draw do
  get 'lists/new'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'lists'=>'lists#create' #データを作成(保存する)アクションを追加
  get 'lists'=>'lists#index'
  get 'lists/:id'=>'lists#show' ,as: 'list'
  get 'lists/:id/edit' => 'lists#edit' , as:'edit_list'
  get 'top' =>'homes#top'
  patch 'lists/:id'=> 'lists#update', as:'update_list'
end
