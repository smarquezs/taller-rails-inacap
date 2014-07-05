Rails.application.routes.draw do
   scope '/:site' do
    get "/welcome/index"
   end
end
