Rails.application.routes.draw do

   scope '/:site' do
    resources :events, except: [:show] do
      collection do
        get "/show/:id(/:title)", action: :show, as: :show
      end
    end

    get "/welcome/index"
   end
end
