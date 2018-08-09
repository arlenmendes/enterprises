class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session
  include DeviseTokenAuth::Concerns::SetUserByToken

  def authenticate_api_v1_user!
    unless current_api_v1_user
      return render json: {
          errors: ['Você precisa estar logado antes de continuar.']
      }
    end
  end
end
