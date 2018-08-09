class Api::V1::Override::RenderSessionsController < Api::V1::BaseController

  def render_create_error_bad_credentials
    render json: {

    }
  end
end