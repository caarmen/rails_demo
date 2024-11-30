module UsersHelper
  def format_updated_at(user)
    user.updated_at.strftime("%Y-%m-%d %H:%M:%S")
  end
end
