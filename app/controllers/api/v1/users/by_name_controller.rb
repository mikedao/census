class Api::V1::Users::ByNameController < Api::V1::ApiController
  before_action :doorkeeper_authorize!

  def index
    users = User.with_serializer_info.search_by_name(params[:q])

    render json: users, each_serializer: UserSerializer, root_url: root_url, status: 200
  end
end
