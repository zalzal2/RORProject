Rails.application.routes.draw do
  get 'mypage/index'
  get 'mypage/new'
  post 'mypage/create'
  get 'mypage/edit/:myinfo_id' => 'mypage#edit'
  post 'mypage/update/:myinfo_id' => 'mypage#update'
  post 'mypage/destroy/:myinfo_id' => 'mypage#destroy'
  devise_for :users
  root 'post#index'
  get 'post/index'
  get 'post/new'
  post 'post/create'
  get 'post/edit/:post_id' => 'post#edit'
  post 'post/update/:post_id' => 'post#update'
  post 'post/destroy/:post_id' => 'post#destroy'
  get 'post/detail/:post_id' => 'post#detail'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
