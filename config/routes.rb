Rails.application.routes.draw do
  apipie
  resources :questions do
    resources :upvotes
  end
end
