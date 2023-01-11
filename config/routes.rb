Rails.application.routes.draw do
  
  namespace :public do
    get 'outputs/new'
    get 'outputs/create'
    get 'outputs/index'
    get 'outputs/show'
    get 'outputs/edit'
    get 'outputs/update'
    get 'outputs/destroy'
  end
  namespace :public do
    get 'lists/new'
    get 'lists/index'
    get 'lists/show'
    get 'lists/edit'
    get 'lists/update'
    get 'lists/destroy'
  end
# 管理者用
# URL /admin/sign_in ...
devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
}

# ユーザー用
# URL /customers/sign_in ...
devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

scope module: :public do
    root to: 'homes#top'
    get 'about' => 'homes#about', as: 'about'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
