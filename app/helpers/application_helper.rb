module ApplicationHelper
  def current_user
    request.session_options[:id]
  end
end
