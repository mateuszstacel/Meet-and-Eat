Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  authenticated :user do
  root 'home#index', as: :authenticated_root
end

unauthenticated do
  root "home#index", as: :unauthenticated_root
end

end
