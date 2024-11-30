module UsersHelper
  def format_updated_at(user)
    user.updated_at.strftime("%Y-%M-%d %H:%M:%S")
  end
end
