Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
          sessions: 'api/v1/overrides/render_sessions',
          token_validations: 'api/v1/overrides/token_validations'
      }

      resources :enterprises, except: [:new,:edit]
    end

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
