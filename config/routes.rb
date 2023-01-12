Rails.application.routes.draw do
 
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

devise_scope :user do
  post 'users/guest_sign_in', to: 'public/sessions#guest_sign_in'
end

scope module: :public do
  root to: 'homes#top'
  get 'about' => 'homes#about', as: 'about'
  resources :lists
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
