Rails.application.routes.draw do
  get 'lists/new'
  post 'lists'=>'lists#create' #ListURLにログインした際にデータを作成(保存する)アクションを
  get 'lists'=>'lists#index'
  get 'lists/show'
  get 'lists/edit'
  get 'top' =>'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
