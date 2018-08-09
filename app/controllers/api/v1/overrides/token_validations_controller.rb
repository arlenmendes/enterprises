class TokenValidationsController < DeviseTOkenAuth::TokenValidationsController
  def render_validate_token_error
    render json: {
        errors: ['Você precisa estar logado antes de  continuar.']
    }
  end
end