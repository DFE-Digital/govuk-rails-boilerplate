Rails.application.routes.draw do
  get "/pages/:page", to: "pages#show"
end
