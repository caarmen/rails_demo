module UsersHelper
  def format_updated_at(user)
    user.updated_at.strftime("%B %d, %Y %I:%M %p")
  end
end
