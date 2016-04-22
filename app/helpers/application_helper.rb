module ApplicationHelper
  def is_liked?(picture)
    picture.likes.find_by(user_id: current_user)
  end
end
