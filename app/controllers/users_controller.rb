class UsersController < ApplicationController
  def index
    @sort_field = params[:sort].presence_in(%w[name age updated_at]) || 'name'
    sort_order = @sort_field == 'updated_at' ? :desc : :asc
    @users = User.order(@sort_field => sort_order)
    @count = @users.size
  end
end
