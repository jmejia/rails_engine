Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :merchants, only: [:show, :index] do
        collection do
          get "/find",     to: "merchants/search#show"
          get "/find_all", to: "merchants/search#index"
        end
      end
    end
  end
end
