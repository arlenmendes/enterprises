class Api::V1::EnterprisesController < Api::V1::BaseController
  before_action :authenticate_api_v1_user!

  def index
    @enterprises = Enterprise.all
  end

  def show
    @enterprise = Enterprise.find(params[:id])
  end
end
