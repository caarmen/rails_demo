class UsersController < ApplicationController
  def index
    @sort_field = params[:sort].presence_in(%w[name age updated_at]) || 'name'
    @users = User.order(@sort_field => :asc)
    @count = @users.size
  end
end
