Rails.application.routes.draw do
  scope "api" do
    scope "v1" do
      get "/test", to: "application#test"
    end
  end

  namespace "api" do
    namespace "v1" do
      resources :users, only: [:index, :show, :create, :update, :destroy], param: :uid
      post '/s3/upload', to: 's3#upload'
    end
  end
end
