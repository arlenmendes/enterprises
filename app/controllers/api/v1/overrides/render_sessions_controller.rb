class Api::V1::Overrides::RenderSessionsController < DeviseTokenAuth::SessionsController

  def render_create_error_bad_credentials
    render json: {
      errors: ['Credenciais Inválidas']
    }, status: :unauthorized
  end
  def render_create_success
    render json: {}, status: :ok
  end

  def render_create_error_not_confirmed
    render json: {}
  end
end