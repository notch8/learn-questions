Rails.application.routes.draw do
  resources :questions do
    resources :upvotes
  end
end
