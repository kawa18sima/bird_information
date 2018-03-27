Rails.application.routes.draw do
  devise_for :users
  resources :articles do
    collection do
      get 'search'
    end
  end

  root 'articles#index'
  resources :users, only: [] do
    collection do
      get 'mypage'
    end
  end
end
